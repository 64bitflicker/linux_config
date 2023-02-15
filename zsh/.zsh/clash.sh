#!/bin/bash

# 设置clash路径
clash_path="/usr/local/bin/clash"

# 停止clash
systemctl stop clash.service

# 取消代理
unset https_proxy

# 如果配置文件存在，备份后下载，如果不存在，直接下载
if [ -e $clash_path/config.yaml ]; then
	mv $clash_path/config.yaml $clash_path/configbackup.yaml
	wget -O $clash_path/config.yaml "https://newsubscribe.hlasw.com/api/v1/client/subscribe?token=c7120ca2423f089f22bd0cbb959e6e78"
else
	wget -O $clash_path/config.yaml "https://newsubscribe.hlasw.com/api/v1/client/subscribe?token=c7120ca2423f089f22bd0cbb959e6e78"
fi

# 重启clash
systemctl restart clash.service

# 重设代理
export https_proxy="http://127.0.0.1:7890"
