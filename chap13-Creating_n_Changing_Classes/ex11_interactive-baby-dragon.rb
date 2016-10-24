class Dragon
    
  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10
    @stuff_in_intestine = 0
    puts "#{@name} is born."
  end
  
  def list
  puts "You can do following things to your cute, scaly, fire-breathing baby:"
  puts "feed\ntoss\nrock\nwalk\nput_to_bed"
  end
  
  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end

  def toss
    puts "You toss #{@name} up into the air."
    puts 'He giggles, which singes your eyebrows.'
    passage_of_time
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts 'He briefly dozes off...'
    passage_of_time
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end
  
  private
  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly = @stuff_in_belly - 1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else 
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name} is starving! In desperation, he ate YOU!"
      exit
    end
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end
    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name}'s stomach grumbles..."
    end
    if poopy?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name} does the potty dance..."
    end
  end
end

puts "So I heard you want a dragon. It so happens I have an egg. Should we hatch it? (yes/no)"
hatch = gets.chomp
if hatch.downcase == "no"
  puts "It wasn't you? Oh well, go on your way then, and come back if you change your mind."
elsif hatch.downcase == "yes"
  puts "..."
  gets
  puts "*crack*"
  gets
  puts "It hatched!"
  gets
  puts "Alright! How would you like to call your newborn dragon?"
  name = gets.chomp
  if name == ""
    puts "Try again, choose the name:"
    name = gets.chomp
  end
  pet = Dragon.new name
    while true
      puts "What would you like to do next?"
      action = gets.chomp
      if pet.respond_to?(action)
        pet.public_send(action)
      else
        puts "Please choose an action from the list."
        pet.list
      end
    end
else puts "I didn't get what you said, sorry. You're welcome to come again!"
end
