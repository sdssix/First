#Table of Contents revised exercise

#Rewrite your table of contents program
#on page 36. Start the program with an array holding all of
#the information for your table of contents (chapter names, page
#numbers, and so on). Then print out the information from the
#array in a beautifully formatted table of contents.

chapter = 1
chapterlog = ["1"]
titlelog = []
pagelog = []
puts "We are going to build a Table of Contents for your book. But we will need the information from you. When you are finished inputting and want to exit, type DONE in all caps."
puts "Please enter the title of Chapter #{chapter}"
title = gets.chomp

while title != "DONE"
  puts "Please enter the beginning page number of Chapter #{chapter}"
  page = gets.chomp

  while page != ""
    chapter += 1
    chapterlog.push chapter.to_s
    titlelog.push title.capitalize
    pagelog.push page
    puts "Please enter the title of Chapter #{chapter}"
    title = gets.chomp

      if title == "DONE"
        line_width = 40
        puts("Table of Contents".center(line_width))
        puts
          counter = 0
          while counter != chapter
          puts("Chapter #{chapterlog[counter]}: " + titlelog[counter].ljust(line_width/2) + pagelog[counter].rjust(line_width/2))
          counter += 1
          end
      end

    puts "Please enter the beginning page number of Chapter #{chapter}"
    page = gets.chomp


  end
end










#line_width = 60
#str = '--> text <--'
#puts(str.ljust(line_width/3) + str.ljust(line_width/2) + str.rjust(line_width/3))
