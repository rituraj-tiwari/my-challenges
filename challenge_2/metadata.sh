#!/bin/bash -f

dt="$(date)"
echo -e "\n---------------$dt---------------" >> metadata.json
curl "http://metadata.google.internal/computeMetadata/v1/instance/disks/?recursive=true" -H "Metadata-Flavor: Google" >> metadata.json