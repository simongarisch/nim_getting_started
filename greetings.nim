# nim compile --run greetings.nim
# nim compile --run greetings.nim arg1 arg2
# nim c -r greetings.nim
# nim c -d:release greetings.nim
# This is a comment
echo "What's your name? "
var name: string = readLine(stdin)
echo "Hi, ", name, "!"
