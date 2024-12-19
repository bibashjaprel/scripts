cd /u01/oracle/PROD/
DY=`date +%Y-%m-%d`
tar -czvf /u01/orcl_tar/ORACLE_HOME_BACKUP_PROD_$DY.tar.gz /u01/oracle/PROD/12.1.0
find /u01/orcl_tar/* -mtime +2 -type f -delete
