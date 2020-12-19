# nim compile --run arrays.nim
type
  IntArray = array[0..5, int] # an array that is indexed with 0..5
var
  x: IntArray
x = [1, 2, 3, 4, 5, 6]
for i in low(x)..high(x):
  echo x[i]

echo("----------")
type
  Direction = enum
    north, east, south, west
  BlinkLights = enum
    off, on, slowBlink, mediumBlink, fastBlink
  LevelSetting = array[north..west, BlinkLights]
var
  level: LevelSetting
level[north] = on
level[south] = slowBlink
level[east] = fastBlink
echo repr(level)  # --> [on, fastBlink, slowBlink, off]
echo low(level)   # --> north
echo len(level)   # --> 4
echo high(level)  # --> west
