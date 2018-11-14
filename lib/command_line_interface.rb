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

def method_name

end

menu
