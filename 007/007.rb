require 'prime'

num = 3
count = 1  # count = 1 as first prime '2'
loop do
  count += 1  if num.prime?
  break  if count == 10001
  num += 2  # even number is not prime. check odd number only.
end
puts num
