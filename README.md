# maas-image-anvil
This repo provides a framework and basic template bash scripts to setup a MIB host and build an image

1. Find your private repo information at: https://launchpad.net/~/+archivesubscriptions/64401
2. Add deb & deb-src lines to apt/maas-image-builder.list
3. Run `. tool/host-prep.sh`
4. Save your desired ISO to the `.iso/` directory
5. Edit value of `source_ISO` in tools/bld-img.sh`
6. Run build cmd `. tools/bld-img.sh`
7. From another terminal or tmux pane, execute `. tools/watch.sh` to monitor progress
8. When complete, find your new file in the current directory & upload to your maas region server
9. Import your new image with the following command syntax:
    `maas admin boot-resources create name='windows/win2016' title='Windows Server 2016' architecture='amd64/generic' filetype=ddtgz content@=${/path/to/windows_maas_img_file}`
