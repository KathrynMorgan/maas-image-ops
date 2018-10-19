#!/bin/bash

source_ISO=Windows_Server_2016_Datacenter_EVAL_en-us_14393_refresh.iso 

maas-image-builder \
  -o Server2016-amd64-root-dd windows \
  --windows-iso ./iso/${source_ISO} \
  --windows-edition win2016 \
  --windows-drivers /root/maas-img-builder/INF/ \
  --windows-language en-US
# Discarded
# --windows-updates \

