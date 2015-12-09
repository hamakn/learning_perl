arr = [
  {:name => :a, :score => 10},
  {:name => :b, :score => 5},
  {:name => :c, :score => 7},
]

p arr.sort_by { |item| item[:score] }

p arr.sort { |a, b| a[:score] <=> b[:score] }
