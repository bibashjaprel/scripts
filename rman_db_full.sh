export DATIM=`date '+%d%m%y_%H%M'`
export DT=`date '+%d%m%y'`
export ORACLE_HOME=/u01/oracle/PROD/12.1.0
export PATH=$ORACLE_HOME/bin:$PATH
export LD_LIBRARY_PATH=$ORACLE_HOME/lib:$LD_LIBRARY_PATH
export LIBPATH=$ORACLE_HOME/lib
export ORACLE_SID=PROD
rm -rf /bck/backup/*
mkdir -p /bck/backup/$DT
/u01/oracle/PROD/12.1.0/bin/rman target / cmdfile '/home/oracle/scripts/rman_backup.scr' msglog '/home/oracle/scripts/bkp_log_rman_full.log'
cp /home/oracle/scripts/bkp_log_rman_full.log /home/oracle/scripts/log/bkp_log_rman_full_$DT.log
