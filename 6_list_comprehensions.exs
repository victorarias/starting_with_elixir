list = lc x inlist [1, 2, 3], do: x - 1 # => [0, 1, 2]

list = lc x inlist [1, 2, 3], y inlist [:a, :b, :c], do: { x, y }
# => [{1, :a}, {1, :b}, {1, :c}, {2, :a}, {2, :b}, {2, :c}, {3, :a}, {3, :b}, {3, :c}]

list = lc x inlist [1, 2, 3], y inlist [:a, :b, :c], x > 2, do: { x, y }
# => [{3, :a}, {3, :b}, {3, :c}]
