
count = 0
years = 1901..2000
years.each do |year|
  (1..12).each do |month|
    count += 1 if Time.new(year, month, 1).wday == 0
  end
end

p count
