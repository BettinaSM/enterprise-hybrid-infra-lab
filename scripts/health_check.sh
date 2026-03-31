#!/bin/bash

echo "==== SYSTEM HEALTH CHECK ===="

echo "Hostname:"
hostname

echo "Uptime:"
uptime

echo "Disk Usage:"
df -h

echo "Memory:"
free -m
