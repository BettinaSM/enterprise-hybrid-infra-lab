#!/bin/bash

echo "===== HEALTH CHECK ====="

HOST=$(hostname)
DATE=$(date '+%Y-%m-%d %H:%M:%S')
OS=$(uname)

echo "SERVER=$HOST"
echo "DATE=$DATE"
echo "OS=$OS"

echo "----------------------"

# DISK
echo "[DISK]"
if command -v df >/dev/null 2>&1; then
    if [ "$OS" = "Linux" ]; then
        df -h
    else
        df -g
    fi
else
    echo "df command not available"
fi

echo "----------------------"

# MEMORY
echo "[MEMORY]"
if [ "$OS" = "Linux" ] && command -v free >/dev/null 2>&1; then
    free -m
elif [ "$OS" = "AIX" ]; then
    vmstat -s
else
    echo "Memory info not available"
fi

echo "----------------------"

# CPU
echo "[CPU]"
if [ "$OS" = "Linux" ] && command -v lscpu >/dev/null 2>&1; then
    lscpu | grep "Model name"
elif [ "$OS" = "AIX" ]; then
    lsattr -El proc0 2>/dev/null
else
    echo "CPU info not available"
fi

echo "----------------------"

# UPTIME
echo "[UPTIME]"
uptime

echo "======================"
