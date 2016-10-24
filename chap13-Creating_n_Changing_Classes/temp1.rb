  pet = 1
      puts "What would you like to do next?"
    action = gets.chomp
    if true #Dragon.respond_to?(action)
      pet.public_send(action)
    else
    puts "Please choose an action from the list."
    end