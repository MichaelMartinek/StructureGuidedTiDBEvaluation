import re
import os
import datetime
import argparse
import threading
import sys
import time
from sqlalchemy import text
from sqlalchemy import create_engine
from sqlalchemy import exc
from tabulate import tabulate

queryFileDirectory = "/home/ubuntu/queries"

outputDirectory = "/home/ubuntu/results"

engine = create_engine('mysql+pymysql://root:@127.0.0.1:4000/test?autocommit=true')

mode = 0o777

explain = True

explainAnalyze = False

noYannakakis = False

explainfile = None

explainAnalyzefile = None

scaResFile = None

started = True

ended = False

endEarly = False

skip = []

onlyPlan = []

isSCA = False

explainID = False


def getAllFilesInDirectoryAndSubdirectories(directory):
    filelist = []

    for root, dirs, files in os.walk(directory):
        for file in files:
            filelist.append(os.path.join(root, file))
    return filelist


def stopProgram(*args, **kwargs):
    ((_, queryName), explainFile, explainAnalyzeFile, numTuplesfile, timefile, errfile, connection, isSCA,
     scaResFile) = args
    explainFile.close()
    explainAnalyzeFile.close()
    timefile.write(queryName + ";" + " Timeout\n")
    timefile.close()
    numTuplesfile.write(queryName + ";" + " Timeout\n")
    numTuplesfile.close()
    errfile.write(queryName + ";" + " Stopped by test script\n")
    errfile.close()
    if isSCA:
        scaResFile.close()
    print(
        "Timeout for query " + queryName + ", but the exection did not stop. Please handle this problem manually (restart the db, restart the script with the -s flag)")
    connection.close()
    sys.exit()


def handleFile(filename, connection, numTuplesfile, timefile, errfile, explainFile, explainAnalyzeFile, idfile, explain,
               explainAnalyze, noYannakakis, timeout, isSCA, scaResFile, explainID):
    failed = False
    with open(filename) as file:
        content = "".join(file.readlines()).strip()
        content = content.replace('"', '')
        content = re.sub(r"([^\.])release(\.)?([^\_])", r"\1test.release\2\3", content)
        selInd = content.index("SELECT")
        ts = str(time.time_ns())
        if noYannakakis:
            content = content[:selInd + len("SELECT ")] + "/*+ YAN_NORMAL() MAX_EXECUTION_TIME(" + str(
                timeout) + ") */ " + content[selInd + len("SELECT "):]
        else:
            content = content[:selInd + len("SELECT ")] + "/*+ MAX_EXECUTION_TIME(" + str(timeout) + ") */ " + content[
                                                                                                               selInd + len(
                                                                                                                   "SELECT "):]

        id = ""

        # Explain

        if explain:
            if explainID:
                id = " /* fn: " + filename + " , ts: " + ts + " */ "  # for identifying the statement in the logs
                if not explainAnalyze:
                    idfile.write(id + '\n')
                    idfile.flush()
            sql = text("explain " + id + content)
            try:
                res = connection.execute(sql)
                result = res.fetchall()
                tabulatePrintResult(result, res.keys(), explainFile)


            except exc.SQLAlchemyError as e:
                print("ERROR!")
                print(e.orig)
                errfile.write(filename.split(".")[0] + "; " + str(e.orig) + "\n")
                errfile.flush()
                pass

            explainFile.flush()

        # Explain analyze

        if explainAnalyze:
            t = threading.Timer((timeout / 1000.0) * 1.02, stopProgram,
                                [os.path.split(filename), explainFile, explainAnalyzeFile, numTuplesfile, timefile,
                                 errfile, connection, isSCA, scaResFile])
            t.start()
            id = " /* fn: " + filename + " , ts: " + ts + " */ "  # for identifying the statement in the logs
            sql = text("explain analyze " + id + content)
            try:
                res = connection.execute(sql)
                result = res.fetchall()
                t.cancel()
                tabulatePrintResult(result, res.keys(), explainAnalyzeFile)
                numTuplesfile.write(filename.split(".")[0] + "; " + result[0][2] + "\n")
                timefile.write(filename.split(".")[0] + "; " + result[0][5].split(",")[0] + "\n")
                numTuplesfile.flush()
                timefile.flush()
                idfile.write(id + '\n')
                idfile.flush()
            except exc.SQLAlchemyError as e:
                t.cancel()
                print("ERROR!")
                print(e.orig)
                failed = True
                if not timefile.closed:
                    timefile.write(filename.split(".")[0] + "; Error/Timeout\n")
                    timefile.flush()
                if not errfile.closed:
                    errfile.write(filename.split(".")[0] + "; " + str(e.orig) + "\n")
                    errfile.flush()
                pass

    if isSCA and explainAnalyze and not failed:
        t = threading.Timer((timeout / 1000.0) * 1.02, stopProgram,
                            [os.path.split(filename), explainFile, explainAnalyzeFile, numTuplesfile, timefile, errfile,
                             connection, isSCA, scaResFile])
        t.start()
        sql = text(content)
        try:
            res = connection.execute(sql)
            result = res.fetchall()
            t.cancel()
            tabulatePrintResult(result, res.keys(), scaResFile)
        except exc.SQLAlchemyError as e:
            t.cancel()
            print("ERROR!")
            print(e.orig)
            if not errfile.closed:
                errfile.write(filename.split(".")[0] + "sca; " + str(e.orig) + "\n")
                errfile.flush()
            pass


def execStmt(stmt, connection):
    sql = text(stmt)
    results = connection.execute(sql)
    for record in results:
        print("\n", " | ".join(record))


def tabulatePrintResult(result, headers, outputfile):
    print(tabulate(result, headers=headers, tablefmt='psql', stralign=None, numalign=None), file=outputfile)


def initArgparse():
    parser = argparse.ArgumentParser(
        prog='executeTests.py',
        description='This program executes the SQL queries in the given directory, saves their runtime and the explain or explain analyze output (query plan)',
        epilog='Created by Michael Martinek. No guarantee or warranty of any kind.')
    parser.add_argument('-e', '--explain', action='store_true', help="execute the queries as explain")
    parser.add_argument('-a', '--explainAnalyze', action='store_true', help="execute the queries as explain analyze")
    parser.add_argument('-n', '--noYannakakis', action='store_true',
                        help="do not use Yannakakis algorithm (adds a optimizer hint disallowing Yannakakis)")
    parser.add_argument("-t", "--timeout", type=int, help="Timeout for a query in milliseconds", default=10000)
    parser.add_argument("-o", "--outputDir", type=str, help="Outputdirectory", default="/home/ubuntu/results")
    parser.add_argument("-q", "--queriesDir", type=str, help="Queriesdirectory", default="/home/ubuntu/queries")
    parser.add_argument("-d", "--databaseURI", type=str, help="DatabaseURI",
                        default="mysql+pymysql://root:@127.0.0.1:4000/test?autocommit=true")
    parser.add_argument("-s", "--startFromQuery", type=str, help="start from a certain query (skip all previous ones)")
    parser.add_argument("-u", "--untilQuery", type=str, help="execute until a certain query (skip all later ones)")
    parser.add_argument("-j", "--skip", type=str, help="skip (jump) the given queries, given as a list 02aa,02ab,...")
    parser.add_argument("-p", "--skipExecution", type=str,
                        help="skip execution for the given queries (only create a explain PLAN), given as a list 02aa,02ab,...")
    parser.add_argument('-g', '--isSCA', action='store_true',
                        help="use this flag if SCA queries are run (short hand -g means group (by))")
    parser.add_argument('-i', '--explainID', action='store_true', help="put the id into the explain queries")
    args = parser.parse_args()
    return args


if __name__ == "__main__":

    args = initArgparse()
    if args.explain:
        explain = args.explain
    if args.explainAnalyze:
        explainAnalyze = args.explainAnalyze
    if args.noYannakakis:
        noYannakakis = args.noYannakakis
    timeout = args.timeout
    if args.outputDir:
        outputDirectory = args.outputDir
    if args.queriesDir:
        queryFileDirectory = args.queriesDir
    if args.databaseURI:
        engine = create_engine(args.databaseURI)
    if args.startFromQuery:
        started = False
    if args.untilQuery:
        endEarly = True
    if args.skip:
        skip = args.skip.split(",")
    if args.skipExecution:
        onlyPlan = args.skipExecution.split(",")
    if args.isSCA:
        isSCA = args.isSCA
        print(isSCA)
    if args.explainID:
        explainID = args.explainID

    ts = str(datetime.datetime.now()).replace(" ", "_")
    outputPath = os.path.join(outputDirectory, ts)
    os.mkdir(outputPath, mode)
    numTuplesfile = open(os.path.join(outputPath, "numTuples_results_" + ts + ".txt"), "a")
    timefile = open(os.path.join(outputPath, "times_results_" + ts + ".txt"), "a")
    errfile = open(os.path.join(outputPath, "errors_" + ts + ".txt"), "a")
    idfile = open(os.path.join(outputPath, "id_" + ts + ".txt"), "a")

    files = getAllFilesInDirectoryAndSubdirectories(queryFileDirectory)
    files.sort()
    with engine.connect() as connection:
        sql = text("set session max_execution_time = 60000;")  # in ms
        connection.execute(sql)
        for filename in files:
            if os.path.split(filename)[1].split(".")[0] in skip:
                continue
            if ended:
                continue
            if not started:
                _, tail = os.path.split(filename)
                if tail.startswith(args.startFromQuery):
                    started = True
                else:
                    continue
            print(filename)
            if explain:
                explainfile = open(os.path.join(outputPath, filename.split(".")[0].split("/")[-1] + "_explain.txt"),
                                   "a")
            if explainAnalyze and not os.path.split(filename)[1].split(".")[0] in onlyPlan:
                explainAnalyzefile = open(
                    os.path.join(outputPath, filename.split(".")[0].split("/")[-1] + "_explainAnalyze.txt"), "a")
            if isSCA:
                scaResFile = open(os.path.join(outputPath, filename.split(".")[0].split("/")[-1] + "_scaRes.txt"), "a")
            handleFile(filename, connection, numTuplesfile, timefile, errfile, explainfile, explainAnalyzefile, idfile,
                       explain, explainAnalyze and not os.path.split(filename)[1].split(".")[0] in onlyPlan,
                       noYannakakis, timeout, isSCA, scaResFile, explainID)
            if explain:
                explainfile.close()
            if explainAnalyze and not os.path.split(filename)[1].split(".")[0] in onlyPlan:
                explainAnalyzefile.close()
            if isSCA:
                scaResFile.close()
            if endEarly:
                _, tail = os.path.split(filename)
                if tail.startswith(args.untilQuery):
                    ended = True
    timefile.close()
    numTuplesfile.close()
    errfile.close()
    idfile.close()
