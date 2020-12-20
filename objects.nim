# nim compile --run objects.nim
type
  Person = object
    name: string
    age: int

var person1 = Person(name: "Peter", age: 30)

echo person1.name # "Peter"
echo person1.age  # 30

var person2 = person1 # copy of person 1

person2.age += 14

echo person1.age # 30
echo person2.age # 44


# the order may be changed
let person3 = Person(age: 12, name: "Quentin")
echo person3

# not every member needs to be specified
let person4 = Person(age: 3)
# unspecified members will be initialized with their default
# values. In this case it is the empty string.
doAssert person4.name == ""
