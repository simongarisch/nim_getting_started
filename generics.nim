# nim compile --run generics.nim

proc showNumber(num: int | float) =
    echo(num)

showNumber(3.14)
showNumber(42)
