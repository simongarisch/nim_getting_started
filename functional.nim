# nim compile --run functional.nim
import sequtils, sugar, strutils

let list = @["Dominik Picheta", "Andreas Rumpf", "Desmond Hume"]
list.map(
    (x: string) -> (string, string) => (x.split[0], x.split[1])
).echo

echo "--------------------------------"
# compare this to the procedural style
for name in list:
    echo name.split[0], name.split[1]
