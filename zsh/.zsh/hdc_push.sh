#!/bin/bash
path=$1
if [[ -z "$path" ]];then
	path=~/master_TOOLS_2022Q1/out/rk3568/developtools/profiler
fi

echo $path
function push
{
	hdc_std shell "mount -o remount,rw /"
	hdc_std shell "rm -rf /data/local/tmp/developtools/"
	hdc_std shell "mkdir -p /data/local/tmp/developtools"


	find "$(path)" -type f -exec hdc_std file send {} /data/local/tmp/developtools/ \;
	
	hdc_std file send "$(path)"/hiprofilerd /data/local/tmp/developtools
	hdc_std file send "$(path)"/hiprofiler_plugins /data/local/tmp/developtools
	hdc_std shell "chmod +x /data/local/tmp/developtools/*"
	hdc_std shell "cp -r /data/local/tmp/developtools/hiprofilerd* /system/bin"
	hdc_std shell "cp -r /data/local/tmp/developtools/*.so /system/lib"
}

push
