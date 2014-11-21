# Testing support function which asserts that an expression
# evaluates to an expected result.
def red(text);   "\033[31m#{text}\033[0m" end
def green(text); "\033[32m#{text}\033[0m" end

def assert_equals(expected_result, expression)
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