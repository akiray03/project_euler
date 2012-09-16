ary1 = 3.step(999, 3).to_a
ary2 = 5.step(999, 5).to_a
p (ary1 + ary2).uniq.inject{|r,i| r+=i }
