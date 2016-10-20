require "yaml"

test_array = ["I <3 Earth",
"No, you can't touch my wand :P",
"I have a solution: laser puppies!"]

test_string = test_array.to_yaml
filename = "ex03_Star-Butterfly-t-shirts"

File.open filename, 'w' do |f|
f.write test_string
end

read_string = File.read filename
read_array = YAML::load read_string
if read_string == test_string
puts "So good so far."
end

if read_array == test_array
puts "Yay! YAML works! <3"
end