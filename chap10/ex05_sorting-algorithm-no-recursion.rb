def sort array
  unsorted = array
  sorted = []
  while unsorted != []
    smallest = unsorted.min
    sorted.push smallest
    unsorted.delete_at(array.index(smallest))
  end
  sorted
end

#checking if algorithm works:
puts "Write as many words as you would like, and press enter after each. If you are finished, press enter on an empty line"
array = []
word = gets.chomp
while word != ""
  array.push word
  word = gets.chomp
end

puts
puts "Here, we sorted your words for you:"
puts sort array

##test 2 by comparing to .sort method. 
if (sort array) == (array.sort)
  puts "Well done, your sorting algorithm works well!"
else
  puts "You have to put more work into your sorting algorithm."
end