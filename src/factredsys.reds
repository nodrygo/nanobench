Red/System []

factorial: func [n [integer!]  return: [integer!]][
  either n > 0 [n * factorial n - 1] [1]
]

i: 0
loop 1000 [  while [i < 13] [ i: i + 1 factorial i  print i ] i: 0  ]

print  [factorial 12]

