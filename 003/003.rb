n = 13195  # prime factor => 5, 7, 13, and 39
m = 600851475143 # largest prime facter is ??

# need ruby 1.9
unless RUBY_VERSION >= '1.9.0'
  puts "require RUBY 1.9.x"
  exit
end
require 'prime'
p Prime.prime_division(n)
p Prime.prime_division(m)
puts
puts Prime.prime_division(m).last.first

