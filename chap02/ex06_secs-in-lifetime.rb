require "date"
birthdate = DateTime.parse('14th Feb 1988 20:20:00+01:00')
pea_seconds = ((DateTime.now - birthdate) * 24 * 60 * 60).to_i
puts "Pea is #{pea_seconds} seconds old."