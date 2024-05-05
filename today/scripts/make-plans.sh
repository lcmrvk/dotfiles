#!/usr/bin/env bash

date_today="$(date -Idate)"
date_today_file="${date_today}.md"

date_yesterday="$(date -Idate -d yesterday)"
date_yesterday_file="${date_yesterday}.md"

date_tomorrow="$(date -Idate -d tomorrow)"
date_tomorrow_file="${date_tomorrow}.md"

# ------------------------------- Today ----------------------------------------

# if a regular file with todays day not yet exist, create it
if [ ! -f $date_today_file ]
then
    echo "Todos for $date_today" > $date_today_file
    echo "====================" >> $date_today_file
fi

# if a symbolic link to todays todo file not yet exists, create it
if [ ! -h "today" ]
then
    ln -s $date_today_file today
else
    rm -rf today
    ln -s $date_today_file today
fi

# ------------------------------- Yesterday ------------------------------------

# if a regular file with yesterdays day exists, create a symbolic link for it
if [ -f $date_yesterday_file ]
then
    # if a symbolic link to yesterdays todo file not yet exists, create it
    if [ ! -h "yesterday" ]
    then
        ln -s $date_yesterday_file yesterday
    else
        rm -rf yesterday
        ln -s $date_yesterday_file yesterday
    fi
fi

# ------------------------------- Tomorrow -------------------------------------

# if a regular file with tomorrows day not yet exists, create it
if [ ! -f $date_tomorrow_file ]
then
    echo "Todos for $date_tomorrow" > $date_tomorrow_file
    echo "====================" >> $date_tomorrow_file
fi

# if a symbolic link to tomorrows todo file not yet exists, create it
if [ ! -h "tomorrow" ]
then
    ln -s $date_tomorrow_file tomorrow
else
    rm -rf tomorrow
    ln -s $date_tomorrow_file tomorrow
fi
