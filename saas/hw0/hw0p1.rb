# takes an array of integers as an argument and returns the sum of its elements.
def sum(array)
  return 0 if array.empty?
  array.inject :+
end

# takes an array of integers as an argument and 
# returns the sum of its two largest elements.
def max_2_sum(array)
  sum(array.sort.reverse[0,2])
end

# sum_to_n returns true when any two elements sum to the second argument
def sum_to_n?(array, n)
  array.combination(2).map {|pair| sum(pair) }.count(n) > 0
end
