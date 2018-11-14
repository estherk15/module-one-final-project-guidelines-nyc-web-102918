require 'rest-client'
require 'json'
require 'pry'
require "../lib/menu/add_book.rb"
require "../lib/menu/favorite_genre.rb"
require "../lib/menu/genres.rb"
require "../lib/menu/list.rb"

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

#enter command to list menus




menu
