#!/usr/bin/env bash
 tblastn \
 -query $1 \
 -subject $2 \
 -task tblastn \
 -outfmt '6 std sseq qlen' | awk '$3 > 30 && $4 > 0.9*$14' | tee $3 |wc -l# temporary line
