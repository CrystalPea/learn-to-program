def englishNumber number
  if number < 0  # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!

  numString = ''  # This is the string we will return.

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.

  #billions
  left  = number
  write = left/1000000000         
  left  = left - write*1000000000  
  if write > 0
    bilions  = englishNumber write
    numString = numString + bilions + ' bilion'
    if left > 0
      numString = numString + ' '
    end
  end

  #milions
  write = left/1000000          
  left  = left - write*1000000  
  if (write > 0) && (write < 1000)
    milions  = englishNumber write
    numString = numString + milions + ' milion'
    if left > 0
      numString = numString + ' '
    end
  end
  
  #thousands
  write = left/1000          
  left  = left - write*1000  

    if ((write > 0) && (write < 1000))    
      thousands  = englishNumber write
      numString = numString + thousands + ' thousand'
      if left > 0
        numString = numString + ' '
      end
    end
	
    if ((write > 1000) && (write.to_f % 1000.0 != 0.0))
	  temp = (write / 1000)
	  write = write - (temp * 1000)
      thousands  = englishNumber write
      numString = numString + thousands + ' thousand'
      if left > 0
        numString = numString + ' '
      end
    end
  
  #hundreds
  write = left/100     
  left  = left - write*100  

  if ((write > 0) && (write < 10))
    hundreds  = englishNumber write
    numString = numString + hundreds + ' hundred'
    if left > 0
      numString = numString + ' '
    end
  end
  
    if ((write > 10) && (write % 10 != 0))
	  temp = (write / 10)
	  write = write - (temp * 10)
      hundreds  = englishNumber write
      numString = numString + hundreds + ' hundred'
      if left > 0
        numString = numString + ' '
      end
    end

  write = left/10          # How many tens left to write out?
  left  = left - write*10  # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of "twelve",
      # we have to make a special exception for these.
      numString = numString + teenagers[left-1]
      # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.

      # Since we took care of the digit in the ones place already,
      # we have nothing left to write.
      left = 0
    else
      numString = numString + tensPlace[write-1]
      # The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      numString = numString + '-'
    end
  end

  write = left  # How many ones left to write out?
  left  = 0     # Subtract off those ones.

  if write > 0
    numString = numString + onesPlace[write-1]
    # The "-1" is because onesPlace[3] is 'four', not 'three'.
  end

  # Now we just return "numString"...
  numString
end

puts englishNumber 124
puts englishNumber 1245
puts englishNumber 12403
puts englishNumber 124034
puts englishNumber 124045166
puts englishNumber 406045166059