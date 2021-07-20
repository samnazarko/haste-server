#!/bin/bash
find /root/haste-server/data* -mtime +30 -exec rm "{}" \;

