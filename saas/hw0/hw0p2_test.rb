require './munit.rb'
require './hw0p2.rb'

assert_equals 'Hello, World', 'hello("World")'

assert_equals false, 'starts_with_consonant?("")'
assert_equals false, 'starts_with_consonant?("1s")'
assert_equals false, 'starts_with_consonant?("asdf")'
assert_equals true, 'starts_with_consonant?("sdf")'
assert_equals true, 'starts_with_consonant?("SDF")'


assert_equals false, 'binary_multiple_of_4?("")'
assert_equals false, 'binary_multiple_of_4?("as")'
assert_equals false, 'binary_multiple_of_4?("234")'
assert_equals false, 'binary_multiple_of_4?("1")'
assert_equals false, 'binary_multiple_of_4?("10")'
assert_equals true, 'binary_multiple_of_4?("0")'
assert_equals true, 'binary_multiple_of_4?("100")'
assert_equals true, 'binary_multiple_of_4?("1000000")'
