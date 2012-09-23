lcmnum = 11

(12..20).each do |num|
  lcmnum = lcmnum.lcm(num)
end

p lcmnum
