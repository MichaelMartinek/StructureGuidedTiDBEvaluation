# Evaluation for StructureGuidedTiDB
This repository contains information regarding the evaluation of [StructureGuidedTiDB](https://github.com/MichaelMartinek/StructureGuidedTiDB). Queries and Scripts used during the evaluation are contained in the `queries` and `testExecution` directories. The output of the scripts, and the logs of the database were used as input for the jupyter notebooks located unter the `evaluations` directory. There are evaluations for single features and the final version.

## Data

The data is based on the [MusicBrainz dataset](https://musicbrainz.org/), current [data](http://ftp.musicbrainz.org/pub/musicbrainz/data/) can be downloaded (`./fullexport/<currentDateTime>/mbdump.tar.bz2`).

The create scripts for the relevant parts of the databases' schema are located in the `schema` directory.

Load data statements for the relevant tables can be generated with the script `generateLoadDataStatements.py`, after specifying the data location.

Note that the created SQL statements have to be executed manually.

## Queries

Mancini et al. [1] provided queries for the MusicBrainz database, ranging from 2 to 30 involved relations. 84 out of 435 queries are of hypertree width 2, meaning cyclic queries, all others are acyclic, with hypertree width 1. Two sets of queries are used, first, full enumeration queries, essentially selecting all columns of the result with SELECT * FROM ..., and 0MA (previously named SCA) queries used in the paper by Gottlob et al. [2], using functions like min and max to compute an aggregate over the output.

## Prerequesites

Python >=3.10

### Test Execution Scripts

Python packages:  SQLAlchemy (tested with 2.0.19), pymysql (1.1.0), tabulate (0.9.0), wait-for-it (2.2.2)

### Jupyter Notebooks

Jupyter datascience-notebook to execute the notebooks with new data.

## Usage

Start the test execution scripts with the unbuffered option of python: `python3 -u`

```
$ python3 testExecutorWrapper.py -h
usage: testExecutorWrapper.py [-h] [-e] [-a] [-n] [-t TIMEOUT] [-o OUTPUTDIR] [-q QUERIESDIR] [-i IPPORT]
                              [-s STARTFROMQUERY] [-u UNTILQUERY] [-j SKIP] [-p SKIPEXECUTION] [-g] [-x SECRET]
                              [-r REPEAT] [-z]

This program wraps the test executor, such that on failure, a restart is conducted

options:
  -h, --help            show this help message and exit
  -e, --explain         execute the queries as explain
  -a, --explainAnalyze  execute the queries as explain analyze
  -n, --noYannakakis    do not use Yannakakis algorithm (adds a optimizer hint disallowing Yannakakis)
  -t TIMEOUT, --timeout TIMEOUT
                        Timeout for a query in milliseconds
  -o OUTPUTDIR, --outputDir OUTPUTDIR
                        Outputdirectory
  -q QUERIESDIR, --queriesDir QUERIESDIR
                        Queriesdirectory
  -i IPPORT, --ipport IPPORT
                        IP:Port
  -s STARTFROMQUERY, --startFromQuery STARTFROMQUERY
                        start from a certain query (skip all previous ones)
  -u UNTILQUERY, --untilQuery UNTILQUERY
                        execute until a certain query (skip all later ones)
  -j SKIP, --skip SKIP  skip (jump) the given queries, given as a list 02aa,02ab,...
  -p SKIPEXECUTION, --skipExecution SKIPEXECUTION
                        skip execution for the given queries (only create a explain PLAN), given as a list
                        02aa,02ab,...
  -g, --isSCA           use this flag if SCA queries are run (short hand -g means group (by))
  -x SECRET, --secret SECRET
                        Password used for the connection
  -r REPEAT, --repeat REPEAT
                        Repeat the test for the given number of runs
  -z, --explainID       put the id into the explain queries

Created by Michael Martinek. No guarantee or warranty of any kind.
```

```
$ python3 executeTests.py -h
usage: executeTests.py [-h] [-e] [-a] [-n] [-t TIMEOUT] [-o OUTPUTDIR] [-q QUERIESDIR] [-d DATABASEURI] [-s STARTFROMQUERY] [-u UNTILQUERY] [-j SKIP]
                       [-p SKIPEXECUTION] [-g] [-i]

This program executes the SQL queries in the given directory, saves their runtime and the explain or explain analyze output (query plan)

options:
  -h, --help            show this help message and exit
  -e, --explain         execute the queries as explain
  -a, --explainAnalyze  execute the queries as explain analyze
  -n, --noYannakakis    do not use Yannakakis algorithm (adds a optimizer hint disallowing Yannakakis)
  -t TIMEOUT, --timeout TIMEOUT
                        Timeout for a query in milliseconds
  -o OUTPUTDIR, --outputDir OUTPUTDIR
                        Outputdirectory
  -q QUERIESDIR, --queriesDir QUERIESDIR
                        Queriesdirectory
  -d DATABASEURI, --databaseURI DATABASEURI
                        DatabaseURI
  -s STARTFROMQUERY, --startFromQuery STARTFROMQUERY
                        start from a certain query (skip all previous ones)
  -u UNTILQUERY, --untilQuery UNTILQUERY
                        execute until a certain query (skip all later ones)
  -j SKIP, --skip SKIP  skip (jump) the given queries, given as a list 02aa,02ab,...
  -p SKIPEXECUTION, --skipExecution SKIPEXECUTION
                        skip execution for the given queries (only create a explain PLAN), given as a list 02aa,02ab,...
  -g, --isSCA           use this flag if SCA queries are run (short hand -g means group (by))
  -i, --explainID       put the id into the explain queries

Created by Michael Martinek. No guarantee or warranty of any kind.
```

Example for running tests: 
```
python3 -u testExecutorWrapper.py -e -a -t 900000 -o <path_to_output_dir> -q <path_to_queries_dir> -x <DB_PASSWORD> -i <DB_IP:Port> -r <number_of_retries> -z
```




 

# Sources
[1] Mancini, R., Karthik, S., Chandra, B., Mageirakos, V., & Ailamaki, A. (2022, June). Efficient massively parallel join optimization for large queries. In Proceedings of the 2022 International Conference on Management of Data (pp. 122-135).

[2] Gottlob, G., Lanzinger, M., Longo, D. M., Okulmus, C., Pichler, R., & Selzer, A. (2023). Structure-Guided Query Evaluation: Towards Bridging the Gap from Theory to Practice. arXiv preprint arXiv:2303.02723.