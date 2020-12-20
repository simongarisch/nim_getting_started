# nim compile --run ex9.nim
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which, a^2 + b^2 = c^2.
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

var product: int

for a in 1..<1000:
    for b in 1..<1000:
        for c in 1..<1000:
            if (a+b+c)==1000 and (a*a+b*b==c*c):
                product = a * b * c
                break

echo product # 31,875,000
