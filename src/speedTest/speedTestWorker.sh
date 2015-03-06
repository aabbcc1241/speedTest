#!/bin/sh

# loop by timer #

# fetch server list
./speedtest_cli.py --list | tee server.list

# start test #
echo '' >> log
echo ''
echo '' >> log

# Sydney
echo ''
echo '' >> log
date
date >> log
echo Sydney
echo sydney >> log
./speedtest_cli.py --share --server $(grep -i Sydney server.list | head -n 1 | awk -F ')' '{print $1}') >> log

# Shenzhen
echo ''
echo '' >> log
date
date >> log
echo Shenzhen
echo Shenzhen >> log
./speedtest_cli.py --share --server $(grep -i Shenzhen server.list | head -n 1 | awk -F ')' '{print $1}') >> log

# Hong Kong
echo ''
echo '' >> log
date
date >> log
echo Hong Kong
echo Hong Kong >> log
./speedtest_cli.py --share --server $(grep -i 'Hong Kong' server.list | head -n 1 | awk -F ')' '{print $1}') >> log

# Taipei
echo ''
echo '' >> log
date
date >> log
echo Taipei
echo Taipei >> log
./speedtest_cli.py --share --server $(grep -i Taipei server.list | head -n 1 | awk -F ')' '{print $1}') >> log

# United Kingdom
echo ''
echo '' >> log
date
date >> log
echo United Kingdom
echo United Kingdom >> log
./speedtest_cli.py --share --server $(grep -i 'United Kingdom' server.list | head -n 1 | awk -F ')' '{print $1}') >> log

# Canada
echo ''
echo '' >> log
date
date >> log
echo Canada
echo Canada >> log
./speedtest_cli.py --share --server $(grep -i Canada server.list | head -n 1 | awk -F ')' '{print $1}') >> log

# New York
echo ''
echo '' >> log
date
date >> log
echo New York
echo New York >> log
./speedtest_cli.py --share --server $(grep -i 'New York' server.list | head -n 1 | awk -F ')' '{print $1}') >> log

echo ---- waiting next time ----

echo ---- end test ----