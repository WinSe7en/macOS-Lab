#!/bin/sh


# Variables used by this script.
#webURL="http://www.du.edu"

if [ "$4" != "" ]; then
    LabAdmin="$4"
fi
if [ "$5" != "" ]; then
    LabAdminPWD="$5"
fi
if [ "$5" != "" ]; then
    LocalAcct="$6"
fi
if [ "$5" != "" ]; then
    LocalAcctPWD="$7"
fi

#Create the local admin account for the Lab
jamf createAccount -admin -username $LabAdmin -realname $LabAdmin -password $LabAdminPWD -home /Users/$LabAdmin -shell /bin/bash

#Create the local lab account
jamf createAccount -admin -username $LocalAcct -realname $LocalAcct -password $LocalAcctPWD -home /Users/$LocalAcct -shell /bin/bash
