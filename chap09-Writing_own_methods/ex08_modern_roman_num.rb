=begin
“Modern” Roman numerals. Eventually, someone thought it would be ter-
ribly clever if putting a smaller number before a larger one meant you
had to subtract the smaller one. As a result of this development, you must
now suffer. Rewrite your previous method to return the new-style Roman
numerals so when someone calls roman_numeral 4, it should return 'IV'.
=end

def modern_roman_numerals num
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
    if write == 9
      hundreds = "CM"
    elsif ((write >= 5) && (write < 9))
      hundreds = "D" + ("C" * (write%5))
    elsif write == 4
      hundreds = "CD"
    else hundreds = "C" * (write%5)
    end
  numstring = numstring + hundreds
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
  numstring = numstring + tens
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
    numstring = numstring + single_digits
  end
  numstring
end

puts modern_roman_numerals 2409
puts modern_roman_numerals 1993
puts modern_roman_numerals 404
puts modern_roman_numerals 49