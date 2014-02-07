total_score = 0
CHARCODE_A = 'A'.getbyte(0) - 1
names = File.open('names.txt').read.split(",").map{|n| n.gsub('"', '') }.sort
names.each_with_index do |name, index|
  total_score += name.bytes.inject(0){|r,i| r + (i - CHARCODE_A) } * (index + 1)
end
p total_score
