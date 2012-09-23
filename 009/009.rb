1000.downto(1).each do |c|
  (1000-c).downto(1).each do |b|
    a = 1000 - c -b
    next  if a == 0
    if a*a + b*b == c*c
      puts "a:#{a}, b:#{b}, c:#{c}"
      puts a * b * c
      exit
    end
  end
end

