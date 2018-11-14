require_relative '../api_communicator.rb'


def ask_for_book #Asking user input of Title and Author
  puts "Enter  the title"
  title=gets.chomp
  puts "Enter the author"
  author=gets.chomp

  add_book(title,author) #calls on method add_book

end

def ask_for_genre
  puts "Enter the genre"
  genre=gets.chomp
  genre
end

def add_book(title,author) #calls on get_book_data_from_title to see if the Google books API is returning the matching book information.
  book_info=get_book_data_from_title(title, author)

  def checktitle(book_info,title,author)
    puts "Is this correct? Y/N \n #{book_info}"
    answer=gets.chomp.upcase
    if answer == "Y"
      savebook(book_info, ask_for_genre)
    elsif answer =="N"
      check_add(book_info,title,author)
    else puts 'invalid input.'
      checktitle(book_info,title,author)
    end
  end

  def check_add(book_info,title,author)
    puts "Add book without description? Y/N"
      answer=gets.chomp.upcase
    if answer == "Y"
      savebook_from_user(title, author, ask_for_genre)

    elsif answer =="N"
      menu
    else puts 'invalid input.'
      check_add
    end
  end
  checktitle(book_info,title,author)

end


def savebook(book_info, genre) #book_info is has retrieved from api_communicator and user input genre
  author1=Author.new(name: book_info[:author])
  genre1= Genre.new(name: genre)
  book1=Book.new(title: book_info[:title], author: author1, genre: genre1, pagecount: book_info[:pages])
  book1.save
  author1.save
  genre1.save
  puts' your book has been added'
  menu
end

def savebook_from_user(title,author,genre)
  author1=Author.new(name:author)
  genre1= Genre.new(name: genre)
  book1=Book.new(title:title, author1: author, genre: genre1)

end
