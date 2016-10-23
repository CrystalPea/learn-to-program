mlp_array = []
mlp_hash = {}

mlp_array[0] = "pink"
mlp_array[1] = "purple"
mlp_array[2] = "blue"
mlp_array[3] = "yellow"

mlp_hash["Pinkie Pie"] = "pink"
mlp_hash["Twilight Sparkle"] = "purple"
mlp_hash["Rainbow Dash"] = "blue"
mlp_hash["Fluttershy"] = "yellow"

mlp_array.each do |colour|
  puts colour
end

mlp_hash.each do |pony, colour|
  puts "#{pony}: #{colour}"
end