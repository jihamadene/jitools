#!/bin/bash
mkdir ~/sorted
cd ~/sorted
for x in {s,f,p}; do
    find /mnt/projects/yeti/assets/  -name "p$x*rig*.ma" | sort > ~/sorted/raw.csv
    awk -F '/' '{print $0>$6".txt"}' ~/sorted/raw.csv
    for f in ~/sorted/*.txt; do
        tail -1 $f
    done
done
