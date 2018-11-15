require 'rest-client'
require 'json'
require 'pry'
# require_relative '../lib/menu/add_book.rb'
# require_relative '../lib/menu/favorite_genre.rb'
# require_relative '../lib/menu/genres.rb'
# require_relative '../lib/menu/list.rb'
def prompt_user
  puts "\n Enter a command or type menu for available commands "
  input=gets.chomp.downcase
  parse_user_input(input)
end

def menu
  list = <<-LIST
  Please enter one of the following commands (by name or number): \n
  1. LIST : View all books in my list, with their author and genre \n
  2. LIST W/DESCRIPTION: View all books, with their author and descriptions
  3. ADD BOOK : Add a book to your reading list \n
  4. GENRES: List genres in your list, with a count indicating the number of books \n
  5. FAVORITE GENRE : tells you the genre you read the most of. \n
  6. Exit:  Exit the program

LIST

  puts list
  user_response=gets.chomp.downcase
  parse_user_input(user_response)
end

def parse_user_input(input)
  case input
  when "menu"
    menu
  when "list","1"
    puts Book.list
    prompt_user
  when "list w/description", "2"
    puts Book.list_everything
    prompt_user
  when "add book", "3"
    ask_for_book
  when "genres", "4"
    puts  Genre.genre_count
    prompt_user
  when "favorite genre", "5"
    puts Genre.favorite_genre
    prompt_user
  when "exit", "6"
  else puts "Invalid input."
    menu
    end
end
