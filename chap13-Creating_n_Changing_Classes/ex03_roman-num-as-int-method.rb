class Integer
def to_roman
  if ((self <= 0 ) || (self > 3000))
    return "Please supply an integer between 1 and 3000 as an argument."
  end
  
  selfstring = ""
  
  #thousands
  left = self
  write = left/1000
  left = left - write*1000
  if write > 0
    thousands = "M"*(write%5)
    selfstring = selfstring + thousands
  end
  
  #hundreds
  write = left/100
  left = left - write*100
  if write > 0
    if write == 9
      hundreds = "CM"
    elsif ((write >= 5) && (write < 9))
      hundreds = "D" + ("C" * (write%5))
    elsif write == 4
      hundreds = "CD"
    else hundreds = "C" * (write%5)
    end
  selfstring = selfstring + hundreds
  end
  
  #tens
  write = left/10
  left = left - write*10
  if write > 0
    if write == 9
      tens = "XC"
    elsif  ((write >= 5) && (write < 9))
      tens = "L" + "X" * (write%5)
    elsif write == 4
      tens = "XL"
    else tens = "X" * (write%5)
    end
  selfstring = selfstring + tens
  end
  
  #single_digits
  if left > 0
    if left == 9
      single_digits = "IX"
    elsif  ((left >= 5) && (left < 9))
      single_digits = "V"+("I"*(left%5))
    elsif left == 4
      single_digits = "IV"
    else single_digits = "I" * (left%5)
    end
    selfstring = selfstring + single_digits
  end
  selfstring
end
end


puts 2409.to_roman
puts 1993.to_roman
puts 404.to_roman
puts 49.to_roman
puts 2359.to_roman