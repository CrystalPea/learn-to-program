class Integer
def factorial
  if self < 0
    return "You can't take the factorial of a negative number! Tsk Tsk..."
  end
  if self <= 1
    1
  else
    self * (self-1).factorial
  end
end
end

puts 3.factorial
puts 4.factorial
puts 8.factorial
puts 13.factorial