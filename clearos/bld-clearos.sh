maas-image-builder -o Server2016-amd64-root-dd windows --windows-iso ./Windows_Server_2016_Datacenter_EVAL_en-us_14393_refresh.iso --windows-edition win2016 --windows-language en-US 
maas-image-builder -o Server2016-amd64-root-dd windows --windows-iso ./Windows_Server_2016_Datacenter_EVAL_en-us_14393_refresh.iso --windows-edition win2016 --windows-language en-US
sudo maas-image-builder -o centos7-amd64-root-tgz --arch amd64 centos --edition 7
