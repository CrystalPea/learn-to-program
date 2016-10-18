puts "Hey beautiful! If you tell me I can tell you how long it is. So what's your first name?"
first_name = gets.chomp
puts "...and your middle name?"
middle_name = gets.chomp
puts "...and finally, your last name? No, it's not a scam! *o_o*"
last_name = gets.chomp
puts "Your name is #{(first_name.length+middle_name.length+last_name.length).to_s} characters long. You're welcome!"