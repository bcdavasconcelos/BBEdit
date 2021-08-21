#!/bin/sh

/usr/local/bin/pandoc -f markdown -drefs -dtufte -t latex $1 --quiet