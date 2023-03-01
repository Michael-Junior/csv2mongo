#!/bin/bash

cd --- || exit

export SBT_OPTS="-Xms12g -Xmx18g -XX:+UseG1GC"

sbt "runMain CSV2Mongodb $1 $2 $3 $4 $5 $6 $7 $8 $9 ${10} ${11} ${12}"
ret="$?"

cd - || exit

exit $ret
