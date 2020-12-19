# nim compile --run sets.nim
type
    CharSet = set[char]
var
    x: CharSet

x = {'a'..'z', '0'..'9'}
echo(x)  # {'0', '1', '2', '3', ...
