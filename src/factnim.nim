import  strutils

proc fact(n: int): int =
  if n == 1:
      1
  else:
      n * fact(n - 1)


proc main() =
  var s: string = ""
  for z in 0..1000:
    for i in 1..12:
      discard fact i

  s = intToStr (fact 12)
  echo s

main()
