require 'rest-client'
require 'json'
require 'pry'
# require_relative '../lib/menu/add_book.rb'
# require_relative '../lib/menu/favorite_genre.rb'
# require_relative '../lib/menu/genres.rb'
# require_relative '../lib/menu/list.rb'

def menu
  list = <<-LIST
  Please enter one of the following commands: \n
  1. LIST : View all books in my list, with their author and descriptions \n
  2. ADD BOOK : Add a book to your reading list \n
  3. GENRES: List genres in your list, with a count indicating the number of books \n
  4. FAVORITE GENRE : tells you the genre you read the most of
LIST

  puts list
  user_response = gets.chomp.downcase
  parse_user_input(user_response)
end

def parse_user_input(input)
  case input
  when "list","1"

  when "add book", "2"
    ask_for_book
  when "genres", "3"
    puts Genre.genres 
  when "favorite genre", "4"
    puts Genre.favorite_genre
  else
    puts "Invalid input"
    menu
  end
end
