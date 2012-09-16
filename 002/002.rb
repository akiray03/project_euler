#!/usr/bin/ruby
MAX = 4000000
# Fibonacci
fib = [1,2]
loop do
  fib << fib[-1] + fib[-2]
  break if fib.last > MAX
end
fib.pop
puts fib.select{|i| i % 2 == 0 }.inject(0){|r,i| r + i }
