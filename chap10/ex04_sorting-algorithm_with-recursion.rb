def qsort array
  return [] if array.length == 0
  pivot = array.shift
  less, more = array.partition {|e| e < pivot }
  qsort(less) + [pivot] + qsort(more)
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
puts qsort array