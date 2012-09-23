sum_of_squares = (1..100).map{|i| i ** 2 }.inject{|r,i| r+=i }
square_of_sum  = (1..100).inject{|r,i| r+=i } ** 2
puts square_of_sum - sum_of_squares
