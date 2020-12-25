#!/usr/bin/env python
import sys
import csv
import numpy as np # pip3 install numpy

# input = sys.stdin.readline()

# print(input)

csv = csv.reader(sys.stdin)

print(np.array(list(csv)))