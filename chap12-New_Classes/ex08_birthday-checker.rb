require "date"

b_string = File.read "ex08_birthday-list.txt"
b_hash = {}
b_list = b_string.split("\n")

b_list.each do |e|
  key_value = e.split(", ")
  b_hash[key_value[0]] = key_value[1]
end

puts "Give me a name from the birthday list and I will tell you when they were born and how old they are."
name = gets.chomp
b_array = b_hash[name].split(" ")
b_date = DateTime.new(b_array[0].to_i, b_array[1].to_i, b_array[2].to_i)

puts "#{name} was born on #{b_date.to_date} and is currently #{((DateTime.now - b_date)/365).to_i} years old."