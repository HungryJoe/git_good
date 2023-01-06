#!/usr/local/bin/bash
md_path=$1
echo $md_path
md_path_no_md=${1::-3}
pandoc -V boxlinks -V pagestyle=headings -V secnumdepth=3 --number-sections $md_path -o $md_path_no_md.pdf
