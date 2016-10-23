require "date"
birthdate = DateTime.parse('14th Feb 1988 20:20:00+01:00')

whenbillion = (birthdate + (1000000000/60/60/24))
puts "On #{whenbillion} I will be 1 billion seconds old."