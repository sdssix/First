#8.3 exercise

#type as many words as we want (one word per line, continuing until we just
#press Enter on an empty line) and then repeats the words back
#to us in alphabetical order.

library = []
puts "Let's build your word library. Type in a word at a time and I will build the library and sort it out for you. To exit the program please enter an empty entry."

puts "Please enter a word:"
word = gets.chomp
while word == ""
  puts "Emptry space is an invalid first entry please try again..."
  puts "Please enter a word:"
  word = gets.chomp
end

while word != ""
  library.push word
  puts "Please enter another word:"
  word = gets.chomp
  if word == ""
    puts "Are you sure you want to exit the program? To exit, input another empty entry. To continue, keep entering a word."
    word = gets.chomp
    if word == ""
      puts "Ok, here is your word library:"
      puts library.sort
    end
  end
end
