numbers = [1, 1]
i = 3
loop do
  number = numbers[0] + numbers[1]
  if number.to_s.size == 1000
    puts i
    break
  end
  numbers = [numbers[1], number]
  i += 1
end
