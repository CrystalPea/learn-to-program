puts "So you want to know how many hours there are in a year."
puts "Is it a leap year? Please answer with yes or no."
yeartype = gets.chomp
if yeartype == "yes"
  puts 24 * 366
elsif yeartype == "no"
  puts 24 * 365
else puts "The answer needs to be either yes or no."
end