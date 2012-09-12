#!/bin/bash
# ------
# Created by: Michael J. Ruschak
# Website: http://www.mikerushcak.com/
# Company: Ruschahk Development (http://www.ruschakdevelopment.com/)
# Last updated: September 12th, 2012
# Version 1.1
# ------

SCRIPT_SAVE_PATH=$HOME/Documents/TermRecordings

if [ ! -d $SCRIPT_SAVE_PATH ]; then
   echo Creating $SCRIPT_SAVE_PATH for the first time.
   mkdir -p $SCRIPT_SAVE_PATH
fi

if [ $# -eq 1 ]; then

   if [ -f $SCRIPT_SAVE_PATH/$1.log ]; then
      echo File $1 already exists.
      exit 0
   fi

   TERMLOG=$1.log

   exit 0
else
	TERMLOG=`date +"%T_%m-%d-%y"`.log
fi

echo "Use the exit command to stop recording and save."

script $SCRIPT_SAVE_PATH/$TERMLOG