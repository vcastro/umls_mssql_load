@echo off
:: Name:     umls_load.cmd
:: Purpose:  Load UMLS Metathesaurus Tables into SQL Server.  Tested on version 2019AA
:: Author:   vcastro@partners.org
:: Revision: May 2019 - initial version
:: Repository: https://github.com/vcastro/umls_mssql_load

SETLOCAL ENABLEEXTENSIONS

:: set load variables
set dbname=UMLS_2019AA
set dbserver=phsqlrpdr322
set filepath=D:\2019AA-full\2019AA\META\

set tables=MRCONSO MRRANK MRFILES MRDEF MRCOLS MRSAB MRDOC AMBIGLUI AMBIGSUI MRAUI MRSMAP MRXW_ENG MRXNW_ENG MRXNS_ENG MRCUI MRMAP MRSTY MRHIER MRREL MRSAT

:: create tables
echo Creating UMLS tables on %dbserver%.%dbname%
sqlcmd -S%dbserver% -d %dbname% -i sql\umls_meta_ddl.sql

:: load data

FOR %%A IN (%tables%) DO (
  echo Loading %%A data
  bcp dbo.%%A IN %filepath%%%A.RRF -f "fmt\%%A.fmt"  -h "TABLOCK" -m 1 -e logs\%%A_Error.log -o logs\%%A_Output.log -S%dbserver% -T -d %dbname%
)

:: create indexes
echo Building Table Indexes
sqlcmd -S%dbserver% -d %dbname% -i sql\umls_meta_indexes.sql