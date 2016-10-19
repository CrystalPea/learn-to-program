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
    return 'Please supply an integer between 1 and 3000.'
  end
  num/1
end