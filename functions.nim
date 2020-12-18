# nim compile --run functions.nim
proc yes(question: string): bool =
  echo question, " (y/n)"
  while true:
    case readLine(stdin)
    of "y", "Y", "yes", "Yes": return true
    of "n", "N", "no", "No": return false
    else: echo "Please be clear: yes or no"

if yes("Should I delete all your important files?"):
  echo "I'm sorry Dave, I'm afraid I can't do that."
else:
  echo "I think you know what the problem is just as well as I do."

#[
A procedure that returns a value has an implicit result variable declared that represents the return value.
A return statement with no expression is shorthand for return result.
The result value is always returned automatically at the end of a procedure if there is no return statement at the exit.
A procedure that does not have any return statement and does not use the special result variable returns the value of its last expression.
]#
proc sumTillNegative(x: varargs[int]): int =
  for i in x:
    if i < 0:
      return
    result = result + i

echo sumTillNegative() # 0
echo sumTillNegative(3, 4, 5) # 12
echo sumTillNegative(3, 4 , -1 , 6) # 7

proc helloWorld(): string =
    "Hello, World!"

echo helloWorld()
