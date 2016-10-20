def fav_food name
    if name == "Miko"
      return "Pasta"
    end
    if name == "Pea"
      return "Fruit"
    end
    "... maybe potato? Everyone likes potato!"
end

def fav_drink name
    if name == "Miko"
      "Beer"
    elsif name == "Pea"
      "Oolong tea?... or Carrot juice?"
    else
      "Watrrr"
    end
end

puts fav_food("Miko")
puts fav_food("Ada")
puts fav_food("Pea")
puts fav_drink("Ola")
puts fav_drink("Pea")
puts fav_drink("Miko")