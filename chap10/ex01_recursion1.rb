def ask_recursively question
  puts question
  reply = gets.chomp.downcase
  if reply == "yes"
    true
  elsif reply == "no"
    false
  else
    puts "Please answer 'yes' or 'no'."
    ask_recursively question # recursion here
  end
end

no_tabu = ask_recursively "Do you pick your nose"
if no_tabu == true
  puts "Congrats! You are free of at least one cultural taboo!"
end