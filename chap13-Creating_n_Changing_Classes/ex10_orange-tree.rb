class OrangeTree
  def initialize name
    @name = name
    @height = 0.0
    @lifespan = 100
    @age = 0
    @fruit_t = 0
    @fruit_y = 0
    @trees = 1
    puts "Your orange tree, #{@name} has been planted."
    time_passes
  end
  
  def height
    puts "She grew and is #{@height} metres tall."
  end
  
  def produce_fruit
    if (@age > 5) && (@age < 15)
      @fruit_y = (100 * @age)
      @fruit_t += @fruit_y
      puts "Your tree still matures, but it started to produce fruit for you already.\nIt has produced #{@fruit_y} orange fruits this year, bon apetit! <3"
    elsif (@age >= 15) && (@age < 50)
      @fruit_y = (100 * 15)
      @fruit_t += @fruit_y
      puts "Your tree is fully mature and at its most productive, enjoy!\nIt has produced #{@fruit_y} orange fruits this year, bon apetit! <3"
    elsif @age >= 50
      @fruit_y = (100 * @lifespan / 4)
      @fruit_t += @fruit_y
      puts "As your tree is getting older, it produces less fruit, but they're still delicious.\nIt has produced #{@fruit_y} orange fruits this year, bon apetit! <3"
    end
    if @fruit_y > 0
      pick_orange?
    else time_passes
    end
  end
  
  def pick_orange?
    puts "Would you like to pick an orange? Please answer with a 'yes' or a 'no'."
    pick = gets.chomp
    if pick.downcase == "yes"
      puts "How many would you like to pick?"
      num = gets.chomp
      if num.to_i <= @fruit_y
        @fruit_y -= num.to_i
        puts "Oh wow, these oranges are super delicious! Planting an orange tree was a great choice!"
        if num.to_i > 10
          puts "Also, these are quite a few oranges, certainly enough for more than one person to enjoy.\nRemember: sharing is caring! :)"
        end
      else puts "Sorry, there is only #{@fruit_y} oranges left this year. Maybe you need more trees?"
      end
    elsif pick.downcase == "no"
      puts "You didn't pick any oranges. They fell down in autumn and composted / were eaten by wild animals.\nFrom some, new trees might grow."
    else puts "I didn't understand that, please answer with either a 'yes' or a 'no'."
      pick_orange?
    end
    time_passes
  end
  
  private
  def time_passes
    if @fruit_y > 0
    chance = @fruit_y * rand(101)
      if chance > 100000
        @trees += 1
        puts "Congrats, a seed from an unpicked fruit germinated! You have #{@trees} trees now ^o^."
        #puts "Name your new tree:"
        #new_name = gets.chomp
        #seedling = OrangeTree.new new_name
        #puts "You now have a new tree and its name is #{new_name}."
      end
    end
    @fruit_y = 0
    puts "A year passes. Your tree, #{@name}, is #{@age} years old."
    if @age <= 10 
      @height = (@height + 0.5).round(1)
      height
    elsif (@age > 10) && (@age < 20)
      @height = (@height + 0.2).round(1)
      height
    elsif (@age >= 20) && (@age < 30)
      @height = (@height + 0.1).round(1)
      height
    elsif @age == 30
     puts "Your tree has reached it's full height at #{@height} metres tall."
    end
    @lifespan -= 1
    @age += 1
    if @lifespan < 1
      puts "Your tree died of old age at 100 years of age. It lived a good, fruitful life. In fact, it produced #{fruit_t} oranges during it's lifetime!"
    end
    produce_fruit
  end
end

tree = OrangeTree.new "Lynda"