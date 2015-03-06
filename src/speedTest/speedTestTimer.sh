#!/bin/sh

for i in `seq 1 168`;
        do
                echo ''
                date
                echo ---- start test ----

                ./speedTestWorker.sh

                echo ''
                date
                echo total run time : $((i)) hours
                if [ "$i" == 168 ]; then
                    echo ---- end test ----
                else
                    echo ---- waiting next test ----
                    echo counting 1 hour...
                fi
        done