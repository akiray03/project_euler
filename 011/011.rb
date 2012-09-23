
grid = File.open('grid.txt').readlines.map{|line| line.chomp.split(/\s/).map{|n| n.to_i } }
max = 0

20.times do |i|
  17.times do |j|
    nums1, nums2 = [], []
    4.times do |k|
      nums1 << grid[i][j + k]
      nums2 << grid[j + k][i]
    end
    max = nums1.inject(:*)  if nums1.inject(:*) > max
    max = nums2.inject(:*)  if nums2.inject(:*) > max
  end
end

17.times do |i|
  17.times do |j|
    nums1, nums2 = [], []
    4.times do |k|
      nums1 << grid[i + k][j + k]
      nums2 << grid[i + 3 - k][j + k]
    end
    max = nums1.inject(:*)  if nums1.inject(:*) > max
    max = nums2.inject(:*)  if nums2.inject(:*) > max
  end
end


p max
