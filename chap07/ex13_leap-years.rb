puts "Give me a starting year"
startyear = gets.chomp.to_i
puts "Give me an ending year"
endyear = gets.chomp.to_i
puts "..."
puts "Here are all the leap years:"
while(startyear <= endyear)
  if (startyear % 4 == 0) && (startyear % 100 != 0 || startyear % 400 == 0) == true
  puts startyear.to_s
  end
  startyear = startyear + 1
end