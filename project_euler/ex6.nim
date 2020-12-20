# nim compile --run ex6.nim
# The sum of the squares of the first ten natural numbers is, 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is, (1 + 2 + ... + 10)^2 = 55^2 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

var sum, sum_of_squares: int

for i in 1..100:
    sum += i
    sum_of_squares += i * i


let square_of_sum: int = sum * sum
echo square_of_sum - sum_of_squares # 25,164,150
