#!/bin/bash
[ !  $# -eq 1 ] &&  echo "args err" && exit 2
id $1 >& /dev/null  && echo "user exist" && exit 3
useradd  $1 >& /dev/null  && echo $1 | passwd --stdin $1 >&  /dev/null && echo "user add ok" && exit 0
echo "i dont know..." && exit 8
