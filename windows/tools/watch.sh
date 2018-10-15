#!/bin/bash

clear
watch_PATH="/var/lib/libvirt/images"
watch_DIR=$( ls ${watch_PATH} | grep 'img-builder-*' | awk '{print $1}' )
watch_FILE="output.img"

echo "  File:      $watch_FILE"
echo "  Directory: $watch_DIR"
echo "  Path:      $watch_PATH"
echo "  Target:    $watch_PATH/$watch_DIR/$watch_FILE"

watching="${watch_PATH}/${watch_DIR}/${watch_FILE}"

end_watch () {
echo "Last Recorded Stats:

${curr_STATS}
"
echo "Exiting"
exit 1
}

run_watch () {
clear
echo "Watching '${watching}'"
curr_STATS=$(du -sh ${watching})
echo "$(date +%D_%H:%M:%S) -- ${curr_STATS}" | tee ./watch.log
}

while [[ $? == "0" ]]; do
    [[ -f ${watching} ]] && end_watch || run_watch
    sleep 2
done


