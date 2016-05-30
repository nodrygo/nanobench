Red []
factorial: func [n][
  either n > 0 [n * factorial n - 1] [1]
]

loop 1000 [repeat n 12  [  factorial n  ] ]

s: to string!  factorial 12
print s
