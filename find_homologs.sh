#!/usr/bin/env bash
# Usage: find_homologs.sh <query file> <subject file> <output file>
 tblastn \
 -query $1 \
 -subject $2 \
 -task tblastn \
 -outfmt '6 std sseq qlen' | awk '$3 > 30 && $4 > 0.9*$14' | tee $3 |wc -l