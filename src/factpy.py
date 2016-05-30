#!/usr/bin/env python
def factorial(n):
  if n > 0:
    return n * factorial(n-1)
  else:
    return 1

for z in range(0, 1000):
    for x in range(1, 12):
      factorial(x)
s = ""
s += str (factorial(12))
print(s)
