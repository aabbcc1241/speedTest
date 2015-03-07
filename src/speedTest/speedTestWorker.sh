#!/bin/sh

# loop by timer #

# fetch server list
echo ''
echo fetching server list...
./speedtest_cli.py --list > server.list

# start test #

# Sydney
echo ''
echo '' >> log
date
date >> log
echo ==Sydney==
echo ==Sydney== >> log
./speedtest_cli.py --share --timeout=20 --server $(grep -i Sydney server.list | head -n 1 | awk -F ')' '{print $1}') >> log

# Shenzhen
echo ''
echo '' >> log
date
date >> log
echo ==Shenzhen==
echo ==Shenzhen== >> log
./speedtest_cli.py --share --timeout=20 --server $(grep -i Shenzhen server.list | head -n 1 | awk -F ')' '{print $1}') >> log

# Hong Kong
echo ''
echo '' >> log
date
date >> log
echo ==Hong Kong==
echo ==Hong Kong== >> log
./speedtest_cli.py --share --timeout=20 --server $(grep -i 'Hong Kong' server.list | head -n 1 | awk -F ')' '{print $1}') >> log

# Taipei
echo ''
echo '' >> log
date
date >> log
echo ==Taipei==
echo ==Taipei== >> log
./speedtest_cli.py --share --timeout=20 --server $(grep -i Taipei server.list | head -n 1 | awk -F ')' '{print $1}') >> log

# United Kingdom
echo ''
echo '' >> log
date
date >> log
echo ==United Kingdom==
echo ==United Kingdom== >> log
./speedtest_cli.py --share --timeout=20 --server $(grep -i 'United Kingdom' server.list | head -n 1 | awk -F ')' '{print $1}') >> log

# Canada
echo ''
echo '' >> log
date
date >> log
echo ==Canada==
echo ==Canada== >> log
./speedtest_cli.py --share --timeout=20 --server $(grep -i Canada server.list | head -n 1 | awk -F ')' '{print $1}') >> log

# New York
echo ''
echo '' >> log
date
date >> log
echo ==New York==
echo ==New York== >> log
./speedtest_cli.py --share --timeout=20 --server $(grep -i 'New York' server.list | head -n 1 | awk -F ')' '{print $1}') >> log
