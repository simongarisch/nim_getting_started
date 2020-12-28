# nim compile --run async_file_read.nim
import asyncdispatch, asyncfile

var file = openAsync("test.txt")
let dataFut = file.readAll()

dataFut.callback =
    proc (future: Future[string]) =
        echo(future.read())

asyncdispatch.runForever()
