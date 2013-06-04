#!/bin/tcsh -f
set log = "~/logs/`date +%y%m%d%h_grfx_lacma.log"

echo "Activeadmin config backup started  at `date`" >> $log

#Script requires activeadmin be installed at /Active/activeadmin
/Active/activeadmin help info  > $log
   

echo "Backup completed `date`" >> $log
echo "--------------------------" >> $log
echo "" >> $log

 cat $log | mailx  -s "Active Storage  configuration backup is completed"  myemail@domain.com>

