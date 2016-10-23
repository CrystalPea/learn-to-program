class Array
  def shuffle
    unshuffled = self.dup
    shuffled = []
    while unshuffled != []
      maxind = unshuffled.length - 1
      random = rand(0..maxind)
      moving = unshuffled[random]
      shuffled.push moving
      unshuffled.delete_at(unshuffled.index(moving))
    end
    shuffled
  end
end

array = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m"]
puts array.shuffle