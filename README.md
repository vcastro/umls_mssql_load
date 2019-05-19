Load UMLS Metathesaurus Files into a SQL Server Database
========================================================


**Step 1 - Download the UMLS Metathesaurus**

https://www.nlm.nih.gov/research/umls/licensedcontent/umlsknowledgesources.html

**Step 2 - Create an Extract using the Metamorphysy application**

See instructions here: https://www.nlm.nih.gov/research/umls/implementation_resources/metamorphosys/help.html

Choose the RRF export format

**Step 3 - Download and Install Microsoft Command Line Utilities for SQL Server**

https://docs.microsoft.com/en-us/sql/tools/sqlcmd-utility


**Step 4 - Edit connection info umls_load.cmd** 

Edit the umls_load.cmd batch file with your connection information including server, database name and path to the RRF files.  You can also specify which tables using the tables parameter.  The following UMLS Metathesaurus files are currently supported:

```
MRCONSO MRRANK MRFILES MRDEF MRCOLS MRSAB MRDOC AMBIGLUI AMBIGSUI MRAUI MRSMAP MRXW_ENG MRXNW_ENG MRXNS_ENG MRCUI MRMAP MRSTY MRHIER MRREL MRSAT
```

Currently, this script only runs on Windows using Integrated Authentication to connect to SQL Server.   You can use local SQL server accounts by editing the sqlcmd and bcp lines in the umls_load.cmd file.  

**Step 5 - Run umls_load.cmd**

Open a command line window with administrator priveleges and enter umls_load.cmd.  The program will drop existing tables, create new tables, run the load and finally create indexes.  You should review the error log files in the logs directory for any errors.

**Notes**

- Only the English Word/String Indexes are loaded
- UMLS Metathesaurus version UMLS2019AA with all English (SAB=ENG) sources load requires requires 86GB, including indexes