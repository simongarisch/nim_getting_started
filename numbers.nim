# nim compile --run numbers.nim
# As a special twist, underscores are allowed for better readability
var n: int
n = 1_000_000
echo n

var x, y: int
x = 1
y = 2

# indentation can be used after the var keyword to list a whole section of variables
var
    a, b: int
    c, d, e: string

a = 7
b = 10
c = "some"
d = "string"

echo c  # 'some'
echo d  # 'string'
echo e  # ''
