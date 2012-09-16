
def grid_route(size = 1)
  return 2  if size == 1
  grid_route(size - 1) * 2 + 2
end

p [1, 2, grid_route(1)]
p [2, 6, grid_route(2)]
p [3, 18, grid_route(3)]
p [20, '?', grid_route(20)]
