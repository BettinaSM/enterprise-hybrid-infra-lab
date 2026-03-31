#!/bin/bash

echo "===== HEALTH CHECK ====="

echo "Hostname:"
hostname

echo "Date:"
date

OS=$(uname)

echo "OS Detected: $OS"

echo "----------------------"

# DISK
echo "[DISK USAGE]"
if [ "$OS" = "Linux" ]; then
    df -h
else
    df -g
fi

echo "----------------------"

# MEMORY
echo "[MEMORY USAGE]"
if [ "$OS" = "Linux" ]; then
    free -m
elif [ "$OS" = "AIX" ]; then
    vmstat -s
else
    echo "Memory command not standardized for this OS"
fi

echo "----------------------"

# CPU
echo "[CPU INFO]"
if [ "$OS" = "Linux" ]; then
    lscpu | grep "Model name"
elif [ "$OS" = "AIX" ]; then
    lsattr -El proc0 | grep frequency
else
    echo "CPU info command not standardized"
fi

echo "----------------------"

# UPTIME
echo "[UPTIME]"
uptime

echo "======================"
