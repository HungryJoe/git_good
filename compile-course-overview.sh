#!/bin/sh
pandoc -V boxlinks -V pagestyle=headings -V secnumdepth=3 --number-sections course_overview.md -o course_overview.pdf
