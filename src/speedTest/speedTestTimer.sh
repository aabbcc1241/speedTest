#!/bin/sh

for i in `seq 1 1048576`;
        do
                echo ''
                date
                echo ---- start test ----

                ./speedTestWorker.sh

                echo ''
                date
                echo total run time : $((i)) hours
                if [ "$i" == 1048576 ]; then
                    echo ---- end test ----
                else
                    echo ---- waiting next test ----
                    echo counting 1 hour...
                    sleep 1800
                fi
        done