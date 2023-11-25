from wait_for_it.wait_for_it import connect  # pip install wait-for-it
import time
import subprocess
from sqlalchemy import text
from sqlalchemy import create_engine
import re
import sys
import argparse
import os
import signal

# important: run with python -u


lastQ = "02aa"
nextQ = "02aa"
untilQ = "30ao"
cmd = "python3 -u executeTests.py "
uri = ""
queries = ['02aa', '02ab', '02ac', '02ad', '02ae', '02af', '02ag', '02ah', '02ai', '02aj', '02ak', '02al', '02am',
           '02an', '02ao', '03aa', '03ab', '03ac', '03ad', '03ae', '03af', '03ag', '03ah', '03ai', '03aj', '03ak',
           '03al', '03am', '03an', '03ao', '04aa', '04ab', '04ac', '04ad', '04ae', '04af', '04ag', '04ah', '04ai',
           '04aj', '04ak', '04al', '04am', '04an', '04ao', '05aa', '05ab', '05ac', '05ad', '05ae', '05af', '05ag',
           '05ah', '05ai', '05aj', '05ak', '05al', '05am', '05an', '05ao', '06aa', '06ab', '06ac', '06ad', '06ae',
           '06af', '06ag', '06ah', '06ai', '06aj', '06ak', '06al', '06am', '06an', '06ao', '07aa', '07ab', '07ac',
           '07ad', '07ae', '07af', '07ag', '07ah', '07ai', '07aj', '07ak', '07al', '07am', '07an', '07ao', '08aa',
           '08ab', '08ac', '08ad', '08ae', '08af', '08ag', '08ah', '08ai', '08aj', '08ak', '08al', '08am', '08an',
           '08ao', '09aa', '09ab', '09ac', '09ad', '09ae', '09af', '09ag', '09ah', '09ai', '09aj', '09ak', '09al',
           '09am', '09an', '09ao', '10aa', '10ab', '10ac', '10ad', '10ae', '10af', '10ag', '10ah', '10ai', '10aj',
           '10ak', '10al', '10am', '10an', '10ao', '11aa', '11ab', '11ac', '11ad', '11ae', '11af', '11ag', '11ah',
           '11ai', '11aj', '11ak', '11al', '11am', '11an', '11ao', '12aa', '12ab', '12ac', '12ad', '12ae', '12af',
           '12ag', '12ah', '12ai', '12aj', '12ak', '12al', '12am', '12an', '12ao', '13aa', '13ab', '13ac', '13ad',
           '13ae', '13af', '13ag', '13ah', '13ai', '13aj', '13ak', '13al', '13am', '13an', '13ao', '14aa', '14ab',
           '14ac', '14ad', '14ae', '14af', '14ag', '14ah', '14ai', '14aj', '14ak', '14al', '14am', '14an', '14ao',
           '15aa', '15ab', '15ac', '15ad', '15ae', '15af', '15ag', '15ah', '15ai', '15aj', '15ak', '15al', '15am',
           '15an', '15ao', '16aa', '16ab', '16ac', '16ad', '16ae', '16af', '16ag', '16ah', '16ai', '16aj', '16ak',
           '16al', '16am', '16an', '16ao', '17aa', '17ab', '17ac', '17ad', '17ae', '17af', '17ag', '17ah', '17ai',
           '17aj', '17ak', '17al', '17am', '17an', '17ao', '18aa', '18ab', '18ac', '18ad', '18ae', '18af', '18ag',
           '18ah', '18ai', '18aj', '18ak', '18al', '18am', '18an', '18ao', '19aa', '19ab', '19ac', '19ad', '19ae',
           '19af', '19ag', '19ah', '19ai', '19aj', '19ak', '19al', '19am', '19an', '19ao', '20aa', '20ab', '20ac',
           '20ad', '20ae', '20af', '20ag', '20ah', '20ai', '20aj', '20ak', '20al', '20am', '20an', '20ao', '21aa',
           '21ab', '21ac', '21ad', '21ae', '21af', '21ag', '21ah', '21ai', '21aj', '21ak', '21al', '21am', '21an',
           '21ao', '22aa', '22ab', '22ac', '22ad', '22ae', '22af', '22ag', '22ah', '22ai', '22aj', '22ak', '22al',
           '22am', '22an', '22ao', '23aa', '23ab', '23ac', '23ad', '23ae', '23af', '23ag', '23ah', '23ai', '23aj',
           '23ak', '23al', '23am', '23an', '23ao', '24aa', '24ab', '24ac', '24ad', '24ae', '24af', '24ag', '24ah',
           '24ai', '24aj', '24ak', '24al', '24am', '24an', '24ao', '25aa', '25ab', '25ac', '25ad', '25ae', '25af',
           '25ag', '25ah', '25ai', '25aj', '25ak', '25al', '25am', '25an', '25ao', '26aa', '26ab', '26ac', '26ad',
           '26ae', '26af', '26ag', '26ah', '26ai', '26aj', '26ak', '26al', '26am', '26an', '26ao', '27aa', '27ab',
           '27ac', '27ad', '27ae', '27af', '27ag', '27ah', '27ai', '27aj', '27ak', '27al', '27am', '27an', '27ao',
           '28aa', '28ab', '28ac', '28ad', '28ae', '28af', '28ag', '28ah', '28ai', '28aj', '28ak', '28al', '28am',
           '28an', '28ao', '29aa', '29ab', '29ac', '29ad', '29ae', '29af', '29ag', '29ah', '29ai', '29aj', '29ak',
           '29al', '29am', '29an', '29ao', '30aa', '30ab', '30ac', '30ad', '30ae', '30af', '30ag', '30ah', '30ai',
           '30aj', '30ak', '30al', '30am', '30an',
           '30ao'] 
log = ""
repeat = 1
iteration = 0


def initArgparse():
    parser = argparse.ArgumentParser(
        prog='testExecutorWrapper.py',
        description='This program wraps the test executor, such that on failure, a restart is conducted',
        epilog='Created by Michael Martinek. No guarantee or warranty of any kind.')
    parser.add_argument('-e', '--explain', action='store_true', help="execute the queries as explain")
    parser.add_argument('-a', '--explainAnalyze', action='store_true', help="execute the queries as explain analyze")
    parser.add_argument('-n', '--noYannakakis', action='store_true',
                        help="do not use Yannakakis algorithm (adds a optimizer hint disallowing Yannakakis)")
    parser.add_argument("-t", "--timeout", type=int, help="Timeout for a query in milliseconds", default=10000)
    parser.add_argument("-o", "--outputDir", type=str, help="Outputdirectory", default="/home/ubuntu/results")
    parser.add_argument("-q", "--queriesDir", type=str, help="Queriesdirectory", default="/home/ubuntu/queries")
    parser.add_argument("-i", "--ipport", type=str, help="IP:Port", default="127.0.0.1:4000")
    parser.add_argument("-s", "--startFromQuery", type=str, help="start from a certain query (skip all previous ones)")
    parser.add_argument("-u", "--untilQuery", type=str, help="execute until a certain query (skip all later ones)")
    parser.add_argument("-j", "--skip", type=str, help="skip (jump) the given queries, given as a list 02aa,02ab,...")
    parser.add_argument("-p", "--skipExecution", type=str,
                        help="skip execution for the given queries (only create a explain PLAN), given as a list 02aa,02ab,...")
    parser.add_argument('-g', '--isSCA', action='store_true',
                        help="use this flag if SCA queries are run (short hand -g means group (by))")
    parser.add_argument('-x', '--secret', type=str, help="Password used for the connection", default="")
    parser.add_argument('-r', '--repeat', type=int, help="Repeat the test for the given number of runs", default=1)
    parser.add_argument('-z', '--explainID', action='store_true', help="put the id into the explain queries")
    args = parser.parse_args()
    return args


# e.g. python3 executeTests.py -e -a -t 900000 -o /home/ubuntu/out/ -q /home/ubuntu/queries -d mysql+pymysql://root:XXXXXXXXXXXX@127.0.0.1:4000/test?autocommit=true -s 06am

if __name__ == "__main__":

    args = initArgparse()
    if args.explain:
        cmd += "-e "
    if args.explainAnalyze:
        cmd += "-a "
    if args.noYannakakis:
        cmd += "-n "
    cmd += "-t "
    cmd += str(args.timeout)
    cmd += " "

    if args.repeat and args.outputDir:
        repeat = args.repeat
        cmd += "-o "
        cmd += args.outputDir
        cmd += "/"
        cmd += str(iteration)
        cmd += " "
    if not args.repeat and args.outputDir:
        cmd += "-o "
        cmd += args.outputDir
        cmd += " "
    if args.queriesDir:
        cmd += "-q "
        cmd += args.queriesDir
        cmd += " "
    if args.ipport and args.secret:
        cmd += "-d mysql+pymysql://root:"
        cmd += args.secret
        cmd += "@"
        cmd += args.ipport
        cmd += "/test?autocommit=true "
        uri = "mysql+pymysql://root:" + args.secret + "@" + args.ipport + "/test?autocommit=true"
    if args.ipport and not args.secret:
        cmd += "-d mysql+pymysql://root"
        cmd += "@"
        cmd += args.ipport
        cmd += "/test?autocommit=true "
        uri = "mysql+pymysql://root" + "@" + args.ipport + "/test?autocommit=true"
    if args.untilQuery:
        cmd += "-u "
        cmd += args.untilQuery
        cmd += " "
        untilQ = args.untilQuery
    if args.skip:
        cmd += "-j "
        cmd += args.skip
        cmd += " "
    if args.skipExecution:
        cmd += "-p "
        cmd += args.skipExecution
        cmd += " "
    if args.isSCA:
        cmd += "-g "
    if args.explainID:
        cmd += "-i "
    if args.startFromQuery:
        lastQ = args.startFromQuery
        nextQ = args.startFromQuery

    while iteration + 1 <= repeat:
        if args.outputDir:
            a = "-o "
            a += args.outputDir
            a += "/"
            a += str(iteration)
            a += " "
            b = "-o "
            b += args.outputDir
            b += "/"
            b += str(iteration + 1)
            b += " "
            if not os.path.isdir(args.outputDir + "/" + str(iteration + 1)):
                os.makedirs(args.outputDir + "/" + str(iteration + 1))
            cmd = cmd.replace(a, b, 1)
            iteration = iteration + 1
            lastQ = "02aa"
            nextQ = "02aa"
        if args.startFromQuery:
            lastQ = args.startFromQuery
            nextQ = args.startFromQuery

        while True:

            connect(args.ipport, 1000)  # wait for it
            print("[++] Server ready, wait for 10 secs")
            time.sleep(10)  # wait some time

            startFrom = "-s "
            startFrom += nextQ
            startFrom += " "

            print(cmd + startFrom)

            process = subprocess.Popen(cmd + startFrom, stdout=subprocess.PIPE, shell=True, preexec_fn=os.setsid)
            while True:
                if process.poll() != None:
                    matches = re.findall(r"[0-9][0-9][a-z][a-z]", log)
                    lastQ = matches[-1]
                    print("\n")
                    print("[+++] Process stopped, last Query")
                    print(lastQ)
                    print("\n")
                    log = ""
                    break
                out = process.stdout.read(1)
                lb = len(log)
                log += out.decode("utf-8")
                la = len(log)
                if out == '' and process.poll() != None:
                    matches = re.findall(r"[0-9][0-9][a-z][a-z]", log)
                    lastQ = matches[-1]
                    print("\n")
                    print("[+++] Process stopped, last Query")
                    print(lastQ)
                    print("\n")
                    log = ""
                    break
                if la - lb > 0:
                    print(log[-1], end="")
                if ", but the exection did not stop. Please handle this problem manually (restart the db, restart the script with the -s flag)" in log:
                    matches = re.findall(r"[0-9][0-9][a-z][a-z]", log)
                    lastQ = matches[-1]
                    print("\n")
                    print("[+++] Failed query stop, last Query")
                    print(lastQ)
                    print("\n")
                    os.killpg(os.getpgid(process.pid), signal.SIGTERM)
                    log = ""
                    break
                if "Lost connection to MySQL server during query" in log:  # error, SQL server connection down
                    matches = re.findall(r"[0-9][0-9][a-z][a-z]", log)
                    lastQ = matches[-1]
                    os.killpg(os.getpgid(process.pid), signal.SIGTERM)
                    o = process.stdout.read(-1)
                    print(o.decode("utf-8"))
                    print("\n")
                    print("[+++] Lost Connection, last Query")
                    print(lastQ)
                    print("\n")
                    log = ""
                    break
                if "Traceback" in log:  # some exception in the executeTests script
                    matches = re.findall(r"[0-9][0-9][a-z][a-z]", log)
                    lastQ = matches[-1]
                    os.killpg(os.getpgid(process.pid), signal.SIGTERM)
                    print("\n")
                    print("[+++] Exception, last Query")
                    print(lastQ)
                    print("\n")
                    log = ""
                    break

            # get nextQ
            next = False
            for q in queries:
                if next:
                    nextQ = q
                    break
                if q == lastQ:
                    next = True

            # wait-for-it: in case the server broke down during computation
            connect(args.ipport, 1000)  # wait for it

            # reached end?
            if lastQ == untilQ:
                print("Reached the end " + lastQ)
                if process.poll() == None:
                    os.killpg(os.getpgid(process.pid), signal.SIGTERM)
                if iteration == repeat:
                    sys.exit()
                else:
                    break

            # db conn: restart
            engine = create_engine(uri)
            with engine.connect() as connection:
                sql = text("shutdown;")
                connection.execute(sql)  # force DB restart
                print("[+++] Sent Shutdown CMD [+++]")

            time.sleep(5)
