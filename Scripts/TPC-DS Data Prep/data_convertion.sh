#!/bin/bash

STAGE=/stage/tpc-ds/SF10000
DEST_STAGE=/stage2/SF10000
STREAMS=15

for i in `cat DatasetHeaders/tables_list.txt`
do
   echo 'Processing '$i;
   for (( n=1;n<=$STREAMS; n++));
   do
      filename=$STAGE/$i'_'$n'_'$STREAMS'.dat';
      csvfile=$DEST_STAGE/$i'.csv';
      if( test -f $filename)
      then
        echo 'Processing '$filename;
        if (( $n == 1 ));
        then
           cat DatasetHeaders/$i'.txt' > $csvfile;
        fi
        cat $filename >> $csvfile; 
      fi
   done
   echo 'Done processing '$i;
done
