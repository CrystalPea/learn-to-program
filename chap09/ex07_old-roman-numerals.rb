=begin
Old-school Roman numerals. In the early days of Roman numerals, the
Romans didn’t bother with any of this new-fangled subtraction “IX”
nonsense. No sir, it was straight addition, biggest to littlest—so 9 was
written “VIIII,” and so on. Write a method that when passed an integer
between 1 and 3000 (or so) returns a string containing the proper old-
school Roman numeral. In other words, old_roman_numeral 4 should return
'IIII'. Make sure to test your method on a bunch of different numbers. Hint:
Use the integer division and modulus methods on page 32.
For reference, these are the values of the letters used:
I = 1 V = 5 X = 10 L = 50
C = 100 D = 500 M = 1000
=end

def old_roman_numerals num
  if ((num <= 0 ) || (num > 3000))
    return "Please supply an integer between 1 and 3000 as an argument."
  end
  
  numstring = ""
  
  #thousands
  left = num
  write = left/1000
  left = left - write*1000
  if write > 0
    thousands = "M"*(write%5)
    numstring = numstring + thousands
  end
  
  #hundreds
  write = left/100
  left = left - write*100
  if write > 0
    if write >= 5
      hundreds = "D" + ("C" * (write%5))
    else hundreds = "C" * (write%5)
    end
  numstring = numstring + hundreds
  end
  
  #tens
  write = left/10
  left = left - write*10
  if write > 0
    if write >= 5
      tens = "L" + "X" * (write%5)
    else tens = "X" * (write%5)
    end
  numstring = numstring + tens
  end
  
  #single_digits
  if left > 0
    if left >= 5
      single_digits = "V"+("I"*(left%5))
    else single_digits = "I" * (left%5)
    end
    numstring = numstring + single_digits
  end
  numstring
end

puts old_roman_numerals 4000
puts old_roman_numerals 2530
puts old_roman_numerals 1051
puts old_roman_numerals 670
puts old_roman_numerals 38
puts old_roman_numerals 4