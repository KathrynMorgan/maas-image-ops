#!/bin/bash

#source_ISO=Windows_Server_2016_Datacenter_EVAL_en-us_14393_refresh 
source_ISO=en_windows_server_2016_updated_feb_2018_x64_dvd_11636692

# RunCMD
maas-image-builder \
  --vcpus "4" \
  -o ${source_ISO} windows \
  --windows-iso ./iso/${source_ISO}.iso \
  --windows-edition win2016hv \
  --windows-updates \
  --windows-drivers /root/maas-img-builder/drivers/INF/ \
  --windows-language en-US 

# Refrence

# Other Flags
# --windows-updates \

# Windows edition flag options `--windows-edition`
# win2008r2
# win2008hvr2
# win2012
# win2012hv
# win2012r2
# win2012hvr2
# win2016
# win2016hv

