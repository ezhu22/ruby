# (1..255).each {|i| print i, " "}

# print (1..255).reject { |i| i % 2 == 0}

# sum = 0; (1..255).each { |i| puts "New number: #{i}, Sum: #{sum += i}" }

# x = [1,3,5,7,9,13]
# puts x.values_at(0..x.length-1)

# x = [-3,-1,-7,-9,-40]
# print x.values_at(0..x.length-1).max, " "

# x = [10,25,3,42,35,12]
# sum = 0.0
# x.each {|i| sum += i}
# average = sum / x.length
# puts average

# print (1..255).find_all {|i| i % 2 != 0}

# array = [1,3,5,7]
# y = 3
# print array.find_all {|i| i > y}

# array = [-9,1,-1,5,10,-2,-5,4]
# for i in 0..array.length
#     idx = array.index {|i| i < 0}
#     if idx <=> array.length-1
#         array.delete_at(idx)
#         array.insert(idx, 0)
#     end
# end
# print array

# array = [1,5,10,-2]
# sum = 0.0
# array.each {|i| sum += i}
# average = sum / array.length
# puts "The maximum number of this range is " + array.max.to_s
# puts "The minimum number of this range is " + array.min.to_s
# puts "The average of this range is " + average.to_s

# array = [1,5,10,7,-2]
# array.shift
# array.push(0)
# print array

# array = [-9,1,-1,5,10,-2,-5,4,-9]
# for i in 0..array.length-1
#     if array.values_at(i)[0] < 0
#         array.delete_at(i)
#         array.insert(i, "Dojo")
#     end
# end
# print array

