# nim compile --run let.nim
let x = "abc" # introduces a new variable `x` and binds a value to it
# x = "xyz"     # Illegal: assignment to `x`

# The difference between let and const is:
# let introduces a variable that can not be re-assigned,
# const means "enforce compile time evaluation and put it into a data section"
echo x
