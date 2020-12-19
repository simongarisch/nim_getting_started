# nim compile --run sequences.nim
# sequences are similar to arrays but of dynamic length which may change during runtime (like strings).

var
    x: seq[int]
x = @[1, 2, 3, 4, 5, 6]
echo(x)
