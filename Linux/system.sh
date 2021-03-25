#!/bin/bash
free -h |grep 'Mem:' |awk '{print $4}' >>./research/backups/freemem/free_mem.txt
df -h >>./research/backups/diskuse/disk_usage.txt
lsof >>./research/backups/freedisk/free_disk.txt
