def sorting_algorithm array
  sorted = []
  unsorted = array
  ind = 0
  ind2 = ""
  while ind != nil
    unsorted.each do |word|
      if (unsorted[ind] <= word) == false
        ind2 = ind + 1
      else ind2 = ind
      end
    end
    if ind2 == ind
      sorted.push unsorted[ind]
      unsorted.delete_at(ind)
    else ind += 1
    end
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
puts (sorting_algorithm array).join(", ")