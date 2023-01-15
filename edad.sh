#!/bin/bash

read -p "En que año naciste?" year;
read -p "De que mes?" month;
read -p "Y que dia?" day;
year=$(( $(date +%Y) - $year ));


if [ "$(date +%m)" -lt "$month" ]; then
    year=$(($year - 1))
elif [ "$(date +%m)" -eq "$month"]; then
    if [ "$day" -gt "$(date +%d)" ]; then
      year=$(($year - 1))
    fi
fi
echo "Tienes $year años";