class Die
  def initialize
    roll
  end
  def roll
  @num_showing = 1 + rand(6)
  end
  
  def showing
    @num_showing
  end
end

die = Die.new
puts die.showing
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing