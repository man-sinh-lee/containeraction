#!/bin/sh

echo "Hello $INPUT_MYINPUT"
memory=$(cat /proc/meminfo)
disk_usage=$(df -hPT)
list_most_memory_consumption=$(ps aux --sort -rss |head)
echo "::set-output name=disk_usage::$disk_usage"
echo "::set-output name=memory::$memory"
echo "::set-output name=list_most_memory_consumption::$list_most_memory_consumption"
