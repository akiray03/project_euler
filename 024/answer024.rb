class Fixnum
  def fact
    return 1  if self == 1
    self * (self - 1).fact
  end
end

def comb_nth(nth = 1000000, digit = 10)
  if nth > digit.fact
    puts 'error'
    return
  end
  nth_ = nth
  number = []

  digit.downto(1) do |i|
    cnt = 0
    while nth > i.fact * (cnt + 1)
      cnt += 1
    end
    nth -= i.fact * cnt
    number[i] = cnt
  end

  number = number.reverse[1..-2]
  ary = (0..(digit-1)).to_a
  num = []
  number.each do |i|
    num << ary[i]
    ary.delete_at(i)
  end
  num << ary.first
  puts "nth: #{nth_}, digit:#{digit}: #{num.join} (nth: #{nth}, debug:#{number.join(',')})"
end




comb_nth
comb_nth(1,3)
comb_nth(2,3)
comb_nth(3,3)
comb_nth(4,3)
comb_nth(5,3)
comb_nth(6,3)

