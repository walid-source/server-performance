#!/bin/bash
echo " ==== CPU usage === "
top -bn1 | grep -i cpu
echo ""

echo "=== memory usage ==="
free -h
echo ""

echo " === disk usage ==="
df -h
echo ""

echo " == top 5 processes by cpu =="
ps -eo pid,ppid,cmd,%cpu --sort=%cpu | head -n 6
echo ""
echo " == top 5 processes by mem == "
ps -eo pid,ppid,cmd,%mem --sort=-%mem | head -n 6
echo "" 

echo " ==== script finished successfully === "
read -p " press enter to exit "

