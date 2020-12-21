# nim compile --run style_insensitivity.nim
# With Nim, you can use snake_case even if the identifier has been defined using camelCase, and vice versa.
# So you can write code in your preferred style even if the library you’re using adopted a
# different style for its identifiers.
import strutils

echo "hello".to_upper()
echo "hello".toUpper()
