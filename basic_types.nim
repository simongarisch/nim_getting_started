# nim compile --run basic_types.nim
var b1, b2: bool
b1 = true
b2 = false
echo(b1) # true
echo(b2) # false
echo("----------")

var c1, c2: char
c1 = 'a'
c2 = 'b'
echo(c1)  # a
echo(c2)  # b
echo("----------")

var s1, s2: string
s1 = "this is"
s2 = "a string"
echo(s1)  # this is
echo(s2)  # a string
echo("----------")

# nim has these integer types built-in: int int8 int16 int32 int64 uint uint8 uint16 uint32
var i1, i2: int
i1 = 7
i2 = 9

# nim has these floating-point types built-in: float float32 float64
var f1, f2: float
f1 = 22.2
f2 = 99.9

# new types can be defined within a type statement
type
    biggestInt = int64
    biggestFloat = float64

# enumerations
type
    Direction = enum
      north, east, south, west

var x = south
echo(x)
echo(north) # 'north'
echo(east)  # 'east'
echo(south) # 'south'
echo(west)  # 'west'
