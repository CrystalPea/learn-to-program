togran = ""
togran2 = ""
togran3 = ""
puts "WHASSUP SONNY?"
while ((togran != "BYE") || (togran2 != "BYE") || (togran3 != "BYE")) == true
#notsince must be in the loop so rand is executed each time, giving different years.
  notsince = "Gran said: \"NO, NOT SINCE #{rand(1920..1951)}!\""
  speakup = "Gran said: \"HUH?!  SPEAK UP, SONNY!\""
  togran = gets.chomp
    if togran != togran.upcase 
	  puts speakup
	elsif togran == "BYE"
	  puts "Grandma ignores you"
	  togran2 = gets.chomp
      if togran2 == "BYE"
	    puts "Grandma ignores you"
		togran3 = gets.chomp
	    if togran3 == "BYE"
		  puts "..."
		elsif togran3 != togran3.upcase  
		  puts speakup
		else puts notsince
	    end
	  elsif togran2 != togran2.upcase
	  puts speakup
	  else puts notsince
      end
    else puts notsince 
    end
end
puts "Gran said: \"BYE SONNY!\""