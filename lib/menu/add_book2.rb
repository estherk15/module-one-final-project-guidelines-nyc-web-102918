require_relative '../api_communicator.rb'

### HELPER METHODS   ######
def ask_for_book #Asking user input of Title and Author
  puts "Enter  the title"
  title=gets.chomp
  puts "Enter the author"
  author=gets.chomp
{title: title, author: author}

end

def ask_for_genre
  puts "Enter the genre"
  genre=gets.chomp.downcase
  genre
end

def correct?(book_info)   # define function
  book_string= "
  Title: #{book_info[:title]}
  Author: #{book_info[:author]}
  Genre: #{book_info[:genre]}
  Description:#{book_info[:description][0..400]}..."
  puts "Is this correct? Y/N" + book_string
  answer=gets.chomp.upcase
  if answer == "Y"|| answer == "YES"
    true
  elsif answer =="N"|| answer == "NO"
    false
  else puts 'invalid input.'
    correct?(info)
  end
end

def add_without_d? #define function
  puts "Add book without description? Y/N"
    answer=gets.chomp.upcase
  if answer == "Y"|| answer == "YES"
    true
  elsif answer =="N"|| answer == "NO"
    false
  else puts 'invalid input.'
    add_without_d
  end
end

def add_book
  #calls on get_book_data_from_title to see if the Google books API is returning the matching book information
  book_info_user=ask_for_book
  book_info=get_book_data_from_api(book_info_user) #


  if correct?(book_info)
    savebook(book_info,ask_for_genre)
  else
    if add_without_d?
      savebook_from_user(bookinfo[:title],bookinfo[:author],genre)
    else
     puts "sorry about that"
     menu
   end
 end
end



def savebook(book_info, genre) #book_info is has retrieved from api_communicator and user input genre
  author1=Author.find_or_create_by(name: book_info[:author])
  genre1= Genre.find_or_create_by(name: genre)
  book1=Book.find_or_create_by(title: book_info[:title], author: author1, genre: genre1, pagecount: book_info[:pages], description: book_info[:description])

  puts' your book has been added'
  menu
end

def savebook_from_user(title,author,genre)
  author1=Author.find_or_create_by(name: author)
  genre1=Genre.find_or_create_by(name: genre)
  book1=Book.find_or_create_by(title: title, author: author1, genre: genre1)
  puts' your book has been added'
  menu

end
