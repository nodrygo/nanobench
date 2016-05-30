#!/bin/bash

####  time raco exe factracket.rkt 
####  time  nim c -d:release factnim.nim
####  time red -c factred.red 

function runmany ()
{
  for run in {1..10}
    do
      $1 $2 >/dev/null
    done
}

echo "****************************"
echo "Nim compiled" 
time runmany ./factnim
echo "****************************"
echo "Red intepreted"
time runmany red factred.red
echo "****************************"
echo "Red compiled"
time runmany ./factred
echo "****************************"
echo "Racket interpreted" 
time runmany ./factracket.rkt
echo "****************************"
echo "Racket compiled" 
time runmany ./factracket 
echo "****************************"
echo "Python 2 interpreted" 
time runmany python ./factpy.py
echo "****************************"
echo "Python 3 interpreted" 
time runmany python3 ./factpy.py
echo "****************************"
echo "Spry"
time runmany ./factspry.sy
echo "****************************"

