#!/bin/bash

LC_ALL=C sort -u content/acronyms.tex -o temp.txt
mv temp.txt content/acronyms.tex
