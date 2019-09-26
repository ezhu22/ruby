a = ["Matz", "Guido", "Dojo", "Choi", "John"]
b = [5, 6, 9, 3, 1, 2, 4, 7, 8, 10]
c = ["Dojo", 9]

puts a.at(1)

puts b.fetch(2)

puts a.delete("Choi")

puts a.reverse

puts (a + b).length

puts b.sort

puts b[2,5]

puts a.shuffle

puts a.join("_")

puts a.insert(3, "test")

puts a.values_at(1,2,3)