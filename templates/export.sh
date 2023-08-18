#!/bin/sh

cat Mitschrift/*.md > Quantenmechanik.md || exit $?
sed -i 's/braket/expval/g' Quantenmechanik.md
sed -i "s/Sommersemester 2023/$(date +%d.%M.%Y)/" Quantenmechanik.md
sed -i '/Dr. Rochus Klesse$/d' Quantenmechanik.md
pandoc --defaults templates/defaults.yml --top-level-division=chapter $@ || exit $?
cat Mitschrift/*.md > Quantenmechanik.md || exit $?

