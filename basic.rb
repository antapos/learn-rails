
# takes an array of integers as an argument and returns the sum of its elements.
def sum(array)
  s = 0
  array.each {|x| s += x}
  s
end

assert_equals 10, 'sum([1,2,3,4])'
assert_equals 0, 'sum([])'

# takes an array of integers as an argument and 
# returns the sum of its two largest elements.
def max_2_sum(array)
  sum(array.sort.reverse[0,2])
end

assert_equals 7, 'max_2_sum([1,2,3,4])'
assert_equals 0, 'max_2_sum([])'
assert_equals 11, 'max_2_sum([11])'

# takes an array of integers and an integer as arguments and 
# returns true if exactly two elements sum to n.
def sum_to_n?(array, n)
  array.combination(2).map {|pair| sum(pair) }.count(n) == 1
end

assert_equals false, 'sum_to_n?([], 0)'
assert_equals false, 'sum_to_n?([1], 1)'
assert_equals true, 'sum_to_n?([1,2,3,4], 3)'

# takes in a string and returns true if it starts 
# with a consonant and false otherwise.
def starts_with_consonant?(s)
  s.match(/^[b-z&&[^eiou]]/i) != nil
end

assert_equals false, 'starts_with_consonant?("")'
assert_equals false, 'starts_with_consonant?("1s")'
assert_equals false, 'starts_with_consonant?("asdf")'
assert_equals true, 'starts_with_consonant?("sdf")'

# takes in a string and returns true if it represents
# a binary number which is a multiple of 4.
def binary_multiple_of_4?(s)
  i = s.to_i(base=2)
  return false if i == 0
  i % 4 == 0
end

assert_equals false, 'binary_multiple_of_4?("")'
assert_equals false, 'binary_multiple_of_4?("as")'
assert_equals false, 'binary_multiple_of_4?("234")'
assert_equals false, 'binary_multiple_of_4?("0")'
assert_equals false, 'binary_multiple_of_4?("1")'
assert_equals false, 'binary_multiple_of_4?("10")'
assert_equals true, 'binary_multiple_of_4?("100")'
assert_equals true, 'binary_multiple_of_4?("1000000")'

def hello(name)
  puts "Hello #{name}"
end

hello('World!')

# Testing support function which asserts that an expression
# evaluates to an expected result.
def assert_equals(expected_result, expression)
  def red(text);   "\033[31m#{text}\033[0m" end
  def green(text); "\033[32m#{text}\033[0m" end
  print "Asserting that #{expression} == #{expected_result}: "
  begin
    actual_result = eval("lambda {#{expression}}").call
    if actual_result == expected_result
      puts "#{green('SUCCESS')}"
    else
    puts "#{red('FAILED')}:"
      puts "  Expected: #{expected_result} but it was #{actual_result}"
    end
  rescue Exception => e
    puts "#{red('EXCEPTION')}:"
    puts "  #{e.backtrace.inspect}"
  end
end
