# nim compile --run open_arrays.nim
# note that openarrays can only be used for parameters.
# Often fixed-size arrays turn out to be too inflexible;
# procedures should be able to deal with arrays of different sizes. The openarray type allows this.

var
  fruits:   seq[string]       # reference to a sequence of strings that is initialized with '@[]'
  capitals: array[3, string]  # array of strings with a fixed size

capitals = ["New York", "London", "Berlin"]   # array 'capitals' allows assignment of only three elements
fruits.add("Banana")          # sequence 'fruits' is dynamically expandable during runtime
fruits.add("Mango")
fruits.add("Orange")
fruits.add("Apple")
fruits.add("Grape")
fruits.delete(fruits.find("Grape"))

proc openArraySize(oa: openArray[string]): int =
  oa.len

assert openArraySize(fruits) == 4     # procedure accepts a sequence as parameter
assert openArraySize(capitals) == 3   # but also an array type
