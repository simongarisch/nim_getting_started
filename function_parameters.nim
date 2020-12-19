# nim compile --run function_parameters.nim
# parameters are immutable in the procedure body.
proc printSeq(s: seq, nprinted: int = -1) =
  var nprinted = if nprinted == -1: s.len else: min(nprinted, s.len)
  for i in 0 ..< nprinted:
    echo s[i]

let s = @[1, 2, 3]
printSeq(s) # 1, 2, 3


# If the procedure needs to modify the argument for the caller, a var parameter can be used
proc divmod(a, b: int; res, remainder: var int) =
  res = a div b        # integer division
  remainder = a mod b  # integer modulo operation

var
  x, y: int
divmod(8, 5, x, y) # modifies x and y
echo x  # 1
echo y  # 3

# To call a procedure that returns a value just for its side effects and ignoring its return value, a discard statement must be used.
# Nim does not allow silently throwing away a return value
proc double(n: int): int =
    return 2 * n

echo(double(2))  # 4

# double(7)  # has to be used
discard double(7)  # but this works

# nim has the ability to overload procedures
proc toString(x: int): string =
  result =
    if x < 0: "negative"
    elif x > 0: "positive"
    else: "zero"

proc toString(x: bool): string =
  result =
    if x: "yep"
    else: "nope"

echo(toString(7))  # positive
echo(toString(true))  # yep
