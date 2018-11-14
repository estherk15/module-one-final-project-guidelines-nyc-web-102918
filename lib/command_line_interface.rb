require 'rest-client'
require 'json'
require 'pry'

def menu
  list = <<-LIST
  Please enter one of the following commands: \n
  1. LIST : View all books in my list, with their author and descriptions \n
  2. ADD BOOK : Add a book to your reading list \n
  3. GENRES: List genres in your list, with a count indicating the number of books \n
  4. FAVORITE GENRE : tells you the genre you read the most of
LIST

  puts list
end

def parse_user_input(input)
  case input
  when "list"||1
    list
  when "add book"||2
    ask_for_book
  when "genres" || 3
    genres
  when "favorite genre" || 4
    favorite_genre
  else puts "Invalid input"
end

def list
end
def ask_for_book
  puts "Enter  the title"
  title=gets.chomp
  puts "Enter the author"
  author=gets.chomp
  add_book(title,author)
end

def add_book(title,author)
  data=get_book_data_from_title(title, author)
  
end


menu
