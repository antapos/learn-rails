# takes an array of integers as an argument and returns the sum of its elements.
def sum(array)
  s = 0
  array.each {|x| s += x}
  s
end

# takes an array of integers as an argument and 
# returns the sum of its two largest elements.
def max_2_sum(array)
  sum(array.sort.reverse[0,2])
end

# takes an array of integers and an integer as arguments and 
# returns true if exactly two elements sum to n.
def sum_to_n?(array, n)
  array.combination(2).map {|pair| sum(pair) }.count(n) == 1
end

def hello(name)
  puts "Hello #{name}"
end

# takes in a string and returns true if it starts 
# with a consonant and false otherwise.
def starts_with_consonant?(s)
  s.match(/^[b-z&&[^eiou]]/i) != nil
end

# takes in a string and returns true if it represents
# a binary number which is a multiple of 4.
def binary_multiple_of_4?(s)
  i = s.to_i(base=2)
  return false if i == 0
  i % 4 == 0
end
