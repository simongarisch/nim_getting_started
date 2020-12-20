# nim compile --run module2.nim
# modules:  Only top-level symbols that are marked with an asterisk (*) are exported
var
    x*: int
    y : int

x = 1
y = 2

proc add*(a, b: int): int =
    return a + b

when isMainModule:
    echo y # 2
    echo add(x, y)  # 3
