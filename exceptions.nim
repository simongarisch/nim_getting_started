# nim compile --run exceptions.nim
proc second() =
    raise newException(IOError, "Somebody set us up the bomb")

proc first() =
    try:
        second()
    except:
        echo "cannot perform second action because: " & getCurrentExceptionMsg()

first()  # cannot perform second action because: Somebody set us up the bomb
