require "date"

puts "What year have you been born in?"
b_year = gets.chomp
puts "...and month (enter number from 1 to 12)?"
b_month = gets.chomp
puts "...and day?"
b_day = gets.chomp

puts "Awesome, I will give you a hug for each birthday you have had so far now:"

birthdate = DateTime.new(b_year.to_i, b_month.to_i, b_day.to_i)
interval = ((DateTime.now - birthdate)/365).to_i
first = 1
interval.times do 
  puts "HUUUUUG for your #{first}. birthday!"
  first += 1
end