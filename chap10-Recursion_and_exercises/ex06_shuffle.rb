def shuffle array
  unshuffled = array.dup #I had a problem that method was changing array, solved it with .dup
  shuffled = []
  while unshuffled != []
    maxind = unshuffled.length - 1
    random = rand(0..maxind)
    moving = unshuffled[random]
    shuffled.push moving
    unshuffled.delete_at(unshuffled.index(moving))
  end
  array = shuffled
end

#testing
arr = ["a", "b", "c", "g", "m", "z"]
puts shuffle arr
puts "voilla, and once more:"
puts shuffle arr