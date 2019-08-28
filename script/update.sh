#!/bin/bash

# Define 
# runtime_url (depends on installation git in build)
# service_name (depends on service_name in install.sh)
runtime_url=https://github.com/s31b18/r_node_runtime/raw/master/afs_rnode.tar.gz
service_name=rnode
tar_file_name=afs_rnode.tar.gz
decompress_dir=afs_rnode_r

current_dir="$PWD"
program_dir=$(dirname $current_dir)

wget $runtime_url
tar -xzf $tar_file_name

echo "Use the old configs or reinstall ?(o=old configs/r=reinstall)"
read reinstall
if [ "$reinstall" = "o" ] ; then
	if [ -f "$program_dir/conf.json" ]; then
	    mv $program_dir/conf.json $current_dir/
	    mv $current_dir/$decompress_dir/* $program_dir/
            mv $current_dir/conf.json $program_dir/
	else
   	    echo "Cannot found the old configs"
	    mv $current_dir/$decompress_dir/* $program_dir/
	fi
else 
    mv $current_dir/$decompress_dir/* $program_dir/
fi
rm -r $current_dir/$decompress_dir
rm $current_dir/$tar_file_name




