y = {:first_name => "Coding", :last_name => "Dojo"}
y.delete :first_name
if y.has_key? :first_name
    puts "Y has a key called :first_name"
else 
    puts "Y does not have a key called :first_name"
end

if y.has_value? "Dojo"
    puts "Y has a value called Dojo"
else
    puts "Y does not have a value called Dojo"
end