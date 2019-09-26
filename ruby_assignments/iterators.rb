# puts ["ant", "bear", "cat"].any? {|word| word.length >= 3}

# ["ant", "bear", "cat"].each { |word| print word, "--" }

# x = (1..4).collect { |i| i*i } # => [1, 4, 9, 16]
# print x

# puts (1..100).detect { |i| i % 2 == 0 and i % 4 == 0 }

# puts (1..100).find_all { |i| i % 6 == 0 and i % 8 == 0 }

# puts (1..10).reject { |i| i % 3 == 0 }

3.upto(10) { |i| print i, " " }