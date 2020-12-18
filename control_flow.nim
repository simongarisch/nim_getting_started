# nim compile --run control_flow.nim

# if, elif, else
let name = ""
if name == "":
  echo "Poor soul, you lost your name?"
elif name == "name":
  echo "Very funny, your name is name."
else:
  echo "Hi, ", name, "!"

# case statement
case name
of "":
  echo "Poor soul, you lost your name?"
of "name":
  echo "Very funny, your name is name."
of "Dave", "Frank":
  echo "Cool name!"
else:
  echo "Hi, ", name, "!"


echo "A number please: "
let n = 3 # from strutils import parseInt; parseInt(readLine(stdin))
case n
of 0..2, 4..7: echo "The number is in the set: {0, 1, 2, 4, 5, 6, 7}"
of 3, 8: echo "The number is 3 or 8"
else: discard # the empty discard statement is a do nothing statement

var myname = "Simon"
while myname != "Simon":
  echo "Please tell me your name: "
  myname = readLine(stdin)


# for loops
for i in countup(1, 10):
  echo i

echo "-----------------"
var i = 1
while i <= 10:
  echo i
  inc(i) # increment i by 1

echo "Counting down from 10 to 1: "
for i in countdown(10, 1):
  echo i
echo "-----------------"

for i in 1 .. 10:
    if i mod 2 == 0:
        echo i  # 2, 4, 6, 8, 10

for i in 0 ..< 10:  # 0 to less than 10
    continue

var s = "some string"
for i in 0 ..< s.len:
    continue

for idx, c in s[0 .. ^1]:
    echo idx, c

# the when statement
# does not open a new scope
when system.hostOS == "windows":
  echo "running on Windows!"
elif system.hostOS == "linux":
  echo "running on Linux!"
elif system.hostOS == "macosx":
  echo "running on Mac OS X!"
else:
  echo "unknown operating system"
