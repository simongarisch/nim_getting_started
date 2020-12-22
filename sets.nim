# nim compile --run sets.nim
type
    CharSet = set[char]
var
    x: CharSet

x = {'a'..'z', '0'..'9'}
echo(x)  # {'0', '1', '2', '3', ...

var collection1: set[int16]
var a, b: int16
a = 12
b = 17
assert collection1 == {}
collection1 = collection1 + {a, b}  # {12, 17}
echo collection1
