# array = [3,5,1,2,7,9,8,13,25,32]
# sum = 0.0
# array.each {|i| sum += i}
# puts "The sum is: " + sum.to_s
# print array.find_all {|i| i > 10}

# array = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
# puts array.shuffle.find_all {|name| name.length > 5}

# array = ('a'..'z').to_a
# puts array.to_s
# array = array.shuffle
# puts array.to_s
# puts "This is the last letter in the array: " + array.last.to_s
# puts "This is the first letter in the array: " + array.first.to_s
# if array.first == "a" or array.first == "e" or array.first == "o" or array.first == "i" or array.first == "u"
#     puts "YOU FOUND A VOWEL!"
# end

# array = []
# for i in 0...10
#     array.push(rand(55..100))
# end
# puts array.sort.to_s
# puts "The max value is: " + array.max.to_s
# puts "The min value is: " + array.min.to_s

# array = []
# for i in 0...10
#     str = ""
#     for j in 0...5
#         str += (65+rand(26)).chr
#     end
#     array.push(str)
# end
# puts "The array is: " + array.to_s

