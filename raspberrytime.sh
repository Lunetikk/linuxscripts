#!/bin/sh
 
#Lunetikk | 03.04.2014 | Change date and time
 
 
read -p "Insert date like YYYY-MM-DD:" DATE
read -p "Insert time like HH:MM:SS:" TIME
 
sudo date -s "$DATE $TIME" 
sudo fake-hwclock
