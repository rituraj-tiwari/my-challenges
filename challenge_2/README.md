# The Challenge 2

  

  

We need to write code that will query the meta data of an instance within AWS and provide a json formatted output. The choice of language and implementation is up to you.

  

  

  

## Approach I followed

  

  

>To fulfill this I created a shell script "metadata.sh" with the curl command to fetch the metadata for a GCP instance for the "disks" key and then piped the output to a file named "metadata.json".
>The output of the curl command is in the json format. Then I made shell script executable by running "chmod +x metadata.sh".
>After this, added a CRON Job to run this script everyday at 10 AM, using "0 10 * * * sudo /home/rituraj0tiwari/metadata.sh" (However, I have not been able to test the CRON Job due to certain limitations, but the shell script is working fine)

  

  

# Shell Script Code

  

  

#!/bin/bash -f

dt="$(date)"
echo -e "\n---------------$dt---------------" >> metadata.json

curl "http://metadata.google.internal/computeMetadata/v1/instance/disks/?recursive=true" -H "Metadata-Flavor: Google" >> metadata.json
