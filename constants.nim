# nim compile --run constants.nim
const
  x = 1
  # a comment can occur here too
  y = 2
  z = y + 5 # computations are possible

echo x  # 1
echo y  # 2
echo z  # 7
