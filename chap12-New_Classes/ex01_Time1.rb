time = Time.new
time2 = time + 60
puts time
puts time2

puts Time.local(2000, 1, 1)
puts Time.local(1988, 2, 14, 20, 20)

puts Time.gm(1964, 4, 1)

require "date"
birthdate = DateTime.parse('14th Feb 1988 20:20:00+01:00')
pea_seconds = ((DateTime.now - birthdate) * 24 * 60 * 60).to_i
puts "Pea is #{pea_seconds} seconds old."