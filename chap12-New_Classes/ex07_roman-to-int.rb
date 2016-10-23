#yes, I know this code can be much shorter, but I only discovered RegExp halfway through writing it and didn't have time to rewrite

def roman_to_i roman
  roman = roman.upcase
  index = 0
  number = 0
  last = roman.length - 1
  while roman[index] != nil
    if roman[index] == "M"
      number += 1000
      index += 1
    elsif (roman[index] == "C") && ((roman[(index+2)..last] =~ /M/) || (roman[(index+2)..last] =~ /D/))
      puts "The argument you passed is not a valid roman numeral. Please try again."
      exit
    elsif roman[index] == "C"
      if roman[index+1] == "M"
        number += 900
        index += 2
      elsif (roman[index] == "D") && (roman[(index+1)..last] =~ /M/)
        puts "The argument you passed is not a valid roman numeral. Please try again."
        exit
      elsif roman[index+1] == "D"
        number += 400
        index += 2
      else number += 100
        index += 1
      end
    elsif roman[index] == "D"
      number += 500
      index += 1
    elsif (roman[index] == "L") && ((roman[(index+1)..last] =~ /M/) || (roman[(index+1)..last] =~ /D/) || (roman[(index+1)..last] =~ /C/))
      puts "The argument you passed is not a valid roman numeral. Please try again."
      exit
    elsif roman[index] == "L"
      number += 50
      index += 1
    elsif (roman[index] == "X") && ((roman[(index+1)..last] =~ /M/) || (roman[(index+1)..last] =~ /D/) || (roman[(index+2)..last] =~ /C/) || (roman[(index+2)..last] =~ /L/))
      puts "The argument you passed is not a valid roman numeral. Please try again."
      exit
    elsif roman[index] == "X"
      if roman[index+1] == "C"
        number += 90
        index += 2
      elsif roman[index+1] == "L"
        number += 40
        index += 2
      else number += 10
        index += 1
      end
    elsif (roman[index] == "V") && ((roman[(index+1)..last] =~ /M/) || (roman[(index+1)..last] =~ /D/) || (roman[(index+1)..last] =~ /C/) || (roman[(index+1)..last] =~ /L/) || (roman[(index+1)..last] =~ /X/))
      puts "The argument you passed is not a valid roman numeral. Please try again."
      exit
    elsif roman[index] == "V"
      number += 5
      index += 1
    elsif (roman[index] == "I") && ((roman[(index+1)..last] =~ /M/) || (roman[(index+1)..last] =~ /D/) || (roman[(index+1)..last] =~ /C/) || (roman[(index+1)..last] =~ /L/) || (roman[(index+2)..last] =~ /L/) || (roman[(index+2)..last] =~ /V/))
      puts "The argument you passed is not a valid roman numeral. Please try again."
      exit
    elsif roman[index] == "I"
      if roman[index+1] == "X"
        number += 9
        index += 2
      elsif roman[index+1] == "V"
        number += 4
        index += 2
      else number += 1
        index += 1
      end
    else puts "The argument you passed is not a valid roman numeral. Please try again."
      new_roman = gets.chomp
      roman_to_i new_roman
    end
  end
  number
end

puts roman_to_i "XVIII"
puts roman_to_i "LIX"
puts roman_to_i "MMXC"
puts roman_to_i "CCCMIL"