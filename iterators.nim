# nim compile --run iterators.nim
# iterators can only be called from for loops
# iterators cannot contain a return statement
# iterators have no implicit result variable
# iterators do not support recursion
# iterators cannot be forward declared

iterator countup(a, b: int): int =
  var res = a
  while res <= b:
    yield res
    inc(res)

for item in countup(1, 3):
    echo(item)  # 1, 2, 3
