#!/bin/sh

/usr/local/bin/pandoc -f markdown $1 -dkao -t latex --quiet