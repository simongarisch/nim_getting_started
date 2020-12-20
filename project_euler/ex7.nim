# nim compile --run ex7.nim
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10,001st prime number?

proc is_prime(x: int): bool =
    if x==0 or x==1:
        return false
    if x==2:
        return true
    for i in 2..<x:
        if x mod i == 0:
            return false
    return true


var n, prime_counter: int
while prime_counter < 10_001:
    n += 1
    if is_prime(n):
        prime_counter += 1

echo n # 104,743
