require 'prime'
sum = 0
Prime.each(2000000){|prime| sum += prime }
puts sum
