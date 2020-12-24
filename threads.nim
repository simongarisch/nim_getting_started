# nim c --threads:on threads.nim
# spawn spawns a thread
# ^ waits for the result
# FlowVar wraps the return value of a spawned procedure
import threadpool

proc foo: string = "Dog"
var x: FlowVar[string] = spawn foo()
assert (^x == "Dog")
