# nim compile --run ex5.nim
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

proc is_divisible_1_to_20(x: int): bool =
    # returns true if x is evenly divisible by all of the
    # numbers from 1 to 20, false otherwise.
    for i in 1..20:
        if x mod i != 0:
            return false
    return true


var counter: int = 1
while not is_divisible_1_to_20(counter):
    counter += 1

echo counter # 232,792,560
