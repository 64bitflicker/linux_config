#!/bin/bash

# echo $1
# htmlbase="https://ghproxy.com/"

function gitcloneproaxy
{
    htmlbase="https://ghproxy.com/"$1;
    echo $htmlbase
    git clone $htmlbase
    # sh $(html)
}

