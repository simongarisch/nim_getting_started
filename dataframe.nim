# nim compile --run dataframe.nim
# nimble install NimData
# https://github.com/bluenote10/NimData

import NimData

let df = DF.fromFile("test.csv")
df.show()
echo("----------")

df.take(2).show()
echo("----------")

echo df.count()
echo("----------")
