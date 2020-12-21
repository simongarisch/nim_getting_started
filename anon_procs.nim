# nim compile --run anon_procs.nim
import sequtils

let numbers = @[1, 2, 3, 4, 5, 6]
let odd = filter(numbers, proc (x: int): bool = x mod 2 != 0)
assert odd == @[1, 3, 5]

echo numbers
echo odd
