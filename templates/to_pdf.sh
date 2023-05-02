#!/bin/sh

cat ??_*.md > Quantenmechanik.md || exit $?
sed -i 's/braket/expval/g' Quantenmechanik.md
pandoc --defaults templates/defaults.yml --top-level-division=chapter $@ || exit $?
sed -i 's/expval/braket/g' Quantenmechanik.md || exit $?
