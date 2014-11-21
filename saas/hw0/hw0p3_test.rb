require './munit.rb'
require './hw0p3.rb'

SUCCESS = "#{green('SUCCESS')}"
FAILED = "#{red('FAILED')}:"

book = BookInStock.new('123',20)
if '$20.00' == book.price_as_string
  puts SUCCESS
else
  puts '#{FAILED}: Expected $20 but got #{book.price_as_string}'
end

begin
  BookInStock.new('', 10)
  puts '#{FAILED}: Expected an ArgumentError'
rescue ArgumentError
  puts SUCCESS
end
