def ask_for_book #Asking user input of Title and Author
  puts "Enter  the title"
  title=gets.chomp
  puts "Enter the author"
  author=gets.chomp
  add_book(title,author) #calls on method add_book
end

def add_book(title,author) #calls on get_book_data_from_title to see if the Google books API is returning the matching book information.
  data=get_book_data_from_title(title, author)
  puts "Is this correct? Y/N \n #{data}"
  answer=gets.chomp
  if answer == "Y"
    savebook(data)
  else answer =="N"
    puts "Add book without description? Y/N"
    if answer == "Y"
      savebook_from_user(title, author)
    else answer =="N"
  end


end


def savebook(data)

  author1=Author.new(author)
  genre= Genre.new(genre)
  book1=Book.new(title:title,author,genre)
end

def savebook_from_user(title,author)
