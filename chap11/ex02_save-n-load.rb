filename = "ex02_litany-against-fear.txt"
string = "I must not fear.
Fear is the mind-killer.
Fear is the little-death that brings total obliteration.
I will face my fear.
I will permit it to pass over me and through me.
And when it has gone past I will turn the inner eye to see its path.
Where the fear has gone there will be nothing. Only I will remain."

File.open filename, "w" do |f|
  f.write string
end

read_string = File.read filename

if read_string == string
  puts "Well done"
else puts "Check your code for bugs"
end