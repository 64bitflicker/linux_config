#!/bin/bash
function set_http_proxy
{
    export http_proxy="http://10.50.40.94:8888"
    export https_proxy="http://10.50.40.94:8888" 
    export ftp_proxy="http://10.50.40.94:8888" 
}


function unset_http_proxy
{
    unset http_proxy
    unset https_proxy 
    unset ftp_proxy
}

