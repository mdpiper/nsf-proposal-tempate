#! /usr/bin/env bash
# Creates a TeX file with a list of \nocite references.
# See https://tex.stackexchange.com/a/170415 for original idea.

bibfiles=" \
  rfp_references.bib"

file=sections/nocite.tex
if [ -f $file ]; then
    rm $file;
fi
echo "%% References included in bibliography but not cited." >> $file
echo "\nociterfp{" >> $file
for bib in $bibfiles; do
    grep @ $bib | grep -v '@string' | grep -v '\\\@' | sed 's/@.*{/  /g' >> $file
done
echo "}" >> $file
