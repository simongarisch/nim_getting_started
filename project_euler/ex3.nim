# nim compile --run ex3.nim
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143?
import math


proc is_prime(x: int64): bool =
    if x==0 or x==1:
        return false
    if x==2:
        return true
    for i in 2..<x:
        if x mod i == 0:
            return false
    return true


var largest, target: int64
target = 600_851_475_143

#[
Every composite number has a factor less than or equal
to its square root.
]#
var max: float64
max = math.pow(float64(target), 0.5)

for i in 1..int64(max):
    if target mod i == 0:
        if is_prime(i):
            largest = i

echo largest # 6,857
