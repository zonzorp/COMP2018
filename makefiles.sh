#!/bin/bash
# This script creates a pile of empty files for use in learning to use the shell glob mechanisms

for a in a b c d e f g h i j k l m n o p q r s t u v w x y z; do mkdir $a; done
for i in 0 1 2 3 4 5 6 7 8 9; do touch $i; done
for a in [a-z]; do for i in [0-9]; do touch $a$i $i$a; for b in [a-z]; do touch $a/$i $a/$b $a/$a$b $a/$b$i $a/$i$b $a/$b$i$a $a/$i$b$i; done; done; done
