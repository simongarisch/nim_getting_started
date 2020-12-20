# nim compile --run ex10.nim
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.
import math

proc is_prime(x: int): bool =
    if x==0 or x==1:
        return false
    if x==2:
        return true

    for i in 2..<int64((math.pow(float(x), 0.5)+1)):
        if x mod i == 0:
            return false
    return true

var sum: int64 = 0
for i in 1..<2_000_000:
    if is_prime(i):
        sum += i

echo sum # 142,913,828,922
