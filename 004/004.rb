numbers = []
(1..999).each do |a|
  (1..999).each do |b|
    prod = a * b
    if prod.to_s == prod.to_s.reverse
      numbers << prod
    end
  end
end

p numbers.sort.last

