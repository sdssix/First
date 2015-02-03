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

#“Modern” Roman numerals. Eventually, someone thought it would
#be terribly clever if putting a smaller number before a larger one
#meant you had to subtract the smaller one. As a result of this
#development, you must now suffer. Rewrite your previous method
#to return the new-style Roman numerals so when someone calls
#roman_numeral 4, it should return 'IV'.

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
    elsif (number < 100 && number >= 90)
      number -= 90
      print "XC"
      roman_numeral number
    elsif (number < 90 && number >= 50)
      number -= 50
      print "L"
      roman_numeral number
    elsif (number < 50 && number >= 40)
      number -= 40
      print "XL"
      roman_numeral number
    elsif (number < 40 && number >= 10)
      number -= 10
      print "X"
      roman_numeral number
    elsif number == 9
      number -= 9
      print "IX"
      roman_numeral number
    elsif (number < 9 && number >= 5)
      number -= 5
      print "V"
      roman_numeral number
    elsif number == 4
      number -= 4
      print "IV"
      roman_numberal number
    elsif (number < 4 && number >= 1)
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
puts roman_numeral 79
puts
puts roman_numeral 99
puts
puts roman_numeral 10
puts
puts roman_numeral 2
puts
puts roman_numeral 2451
puts
puts roman_numeral 593
puts
puts roman_numeral 60
puts
puts roman_numeral 90
puts
puts roman_numeral 98
puts
puts roman_numeral 100
