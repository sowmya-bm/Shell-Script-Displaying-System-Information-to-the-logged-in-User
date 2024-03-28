#!/bin/bash
 echo -e "...................................HELLO..................................................."
 echo -e "Hi $(whoami)!Welcome to my DevOps journey!"
 echo -e "..........................................................................................."
 #show the date and time
 echo -e "Current date and time is: $(date)"
 echo -e "____________________________________________________________________________________________"
 #show uptime and downtime
 echo -e "Uptime of the server is $(uptime) \n Last login details: \n$(last -a | head -3)"
 echo -e "______________________________________________________________________________________________"
 #show disc space and ram utilization
 echo -e "Disc space is $(df -h | xargs | awk '{ print $11 "/" $9 }')"
 echo -e "________________________________________________________________________________________________"
 #show RAM utilization
 echo -e "RAM utilization is $(free | xargs | awk '{print $8 "/" $10}')"
 echo -e "_________________________________________________________________________________________________"
 #show top CPU processes
 echo -e "\nTop CPU processes\n$(top -b -n 1 | tail -n +8 | head -n 10)"
