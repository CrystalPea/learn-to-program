class Die
  def initialize
    roll
  end
  def roll
  @num_showing = 1 + rand(6)
  end
  
  def showing num
    if (num < 1) || (num > 6) || ((num.is_a? Integer) == false)
      @num_showing
    else num
    end
  end
end

die = Die.new
puts die.showing 6
die.roll
puts die.roll
puts die.showing 5
