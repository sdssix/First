#Old-school Roman numerals. In the early days of Roman numerals,
#the Romans didn’t bother with any of this new-fangled subtraction
#“IX” nonsense. No sir, it was straight addition, biggest
#to littlest—so 9 was written “VIIII,” and so on. Write a method
#that when passed an integer between 1 and 3000 (or so) returns a
#string containing the proper old-school Roman numeral. In other
#words, old_roman_numeral 4 should return 'IIII'. Make sure to test
#your method on a bunch of different numbers. Hint: Use the integer
#division and modulus methods on page 37.
#For reference, these are the values of the letters used:
#I = 1 V = 5 X = 10 L = 50
#C = 100 D = 500 M = 1000

def roman_numeral number
  while number != 0
    if number >= 1000
      number -= 1000
      print "M"
      roman_numeral number
    elsif (number < 1000 && number >= 500)
      number -= 500
      print "D"
      roman_numeral number
    elsif (number < 500 && number >= 100)
      number -= 100
      print "C"
      roman_numeral number
    elsif (number < 100 && number >= 50)
      number -= 50
      print "L"
      roman_numeral number
    elsif (number < 50 && number >= 10)
      number -= 10
      print "X"
      roman_numeral number
    elsif (number < 10 && number >= 5)
      number -= 5
      print "V"
      roman_numeral number
    elsif (number < 5 && number >= 1)
      number -= 1
      print "I"
      roman_numeral number
    elsif number == 0
      break
    end
  break
  end
end

puts roman_numeral 9
puts
puts roman_numeral 10
puts
puts roman_numeral 2
puts
puts roman_numeral 2451
puts
puts roman_numeral 593
