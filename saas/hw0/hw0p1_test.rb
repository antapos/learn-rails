require './munit.rb'
require './hw0p1.rb'

assert_equals 10, 'sum([1,2,3,4])'
assert_equals 0, 'sum([])'

assert_equals 7, 'max_2_sum([1,2,3,4])'
assert_equals 0, 'max_2_sum([])'
assert_equals 11, 'max_2_sum([11])'


assert_equals false, 'sum_to_n?([], 0)'
assert_equals false, 'sum_to_n?([1], 1)'
assert_equals true, 'sum_to_n?([1,2,3,4,5], 5)'
assert_equals true, 'sum_to_n?([3,0,5], 5)'
