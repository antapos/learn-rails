# takes a string representing a name and returns the string "Hello, " concatenated with the name
def hello(name)
  "Hello, #{name}"
end

# takes in a string and returns true if it starts 
# with a consonant and false otherwise.
# (For our purposes, a consonant is any letter other than A, E, I, O, U.)
def starts_with_consonant?(s)
  s.match(/^[b-z&&[^eiou]]/i) != nil
end

# takes in a string and returns true if it represents
# a binary number which is a multiple of 4.
def binary_multiple_of_4?(s)
  return false unless s =~ /^[01]+$/
  i = s.to_i(base=2)
  i % 4 == 0
end
