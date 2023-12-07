#!/bin/bash

fldnum=$(ls -R $1* | grep / | wc -l)
echo -e "Total number of folders (including all nested ones) = $fldnum"

top5=$(du -h -- $1* | sort -n -r | head -n 5 | awk '{printf "%d - %s, %sB\n", ++i, $2, $1}')
echo -e "TOP 5 folders of maximum size arranged in descending order (path and size):\n$top5"

flsnum=$(find $1 -type f | wc -l)
echo -e "Total number of files = $flsnum"

echo "Number of:"
echo -n "Configuration files (with the .conf extension) = " ; find $1 -type f -name \*.conf | wc -l
echo -n "Text files = "; find $1* -type f -exec grep -Iq . {} \; -print | wc -l
echo -n "Executable files = " ; find $1 -type f -executable | wc -l
echo -n "Log files (with the extension .log) = " ; find $1 -type f -name \*.log | wc -l
echo -n "Archive files = " ; find $1 -type f -name \*.tar -o -name \*.zip -o -name \*.7z | wc -l
echo -n "Symbolic links = " ; ls -lR $1 | grep ^l | wc -l

top10f=$(find $1* -type f -exec ls -sh "{}" \; | sort -nr | head -10 | awk 'BEGIN{}{ext=split($2, a, "."); printf "%d - %s, %sB, %s\n", ++i, $2, $1, a[ext]}')
echo -e "TOP 10 files of maximum size arranged in descending order (path, size and type):\n$top10f"

top10exec=$(find $1* -type f -executable -exec du -hs {} + | sort -nr | head -10 | awk 'BEGIN{}{"md5sum " $2 | getline m5s; close("md5sum"); idx=split(m5s, a, " "); printf "%d - %s, %sB, %s\n", ++i, $2, $1, a[1]}')
echo -e "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file)\n$top10exec"
