# nim compile --run ex4.nim
# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 * 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
import strutils


proc reversed(s: string): string =
  result = newString(s.len)
  for i,c in s:
    result[s.high - i] = c


proc is_palindromic_number(x: int): bool =
    # returns true if x is a palindromic number, false otherwise
    let s = strutils.intToStr(x)
    if reversed(s) == s:
        return true
    return false


var largest: int = 0
# go through pairs of three digit numbers
# these are all numbers from 100 -> 999
for i in 100..<1000:
    for j in 100..<1000:
        let result: int = i * j
        if is_palindromic_number(result):
            if result > largest:
                largest = result

echo largest # 906609
