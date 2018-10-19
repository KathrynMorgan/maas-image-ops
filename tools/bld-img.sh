#!/bin/bash

#source_ISO=Windows_Server_2016_Datacenter_EVAL_en-us_14393_refresh.iso 
source_ISO=en_windows_server_2016_updated_feb_2018_x64_dvd_11636692.iso

# RunCMD
maas-image-builder \
  -o Server2016-amd64-root-dd windows \
  --windows-iso ./iso/${source_ISO} \
  --windows-edition win2016 \
  --windows-drivers /root/maas-img-builder/drivers/INF/ \
  --windows-language en-US

# Discarded
# --windows-updates \

