### to do
* [x] Build out the models
* [ ] Build migration functions
* [ ] Built out api_communicator
* [ ] Build out command line interface
* [ ] Create a ReadMe file with user instructions
* [ ] Record a video using app
* [ ] CLI art VERY OPTIONAL!!!

# App flow:

Terminal  Says,
“welcome to your books list. Enter “menu” at anytime to see the menu”

 Menu looks something like this:

“Please enter one of the following commands”
1. List : View all books in my list, with their author and descriptions
2. Add Book : Add a book to your reading list
<!-- 3. Reading : View books i’m currently reading, with their author
4. Read : View books you’ve read, with their author -->
5. Genres: List genres in your list, with a count indicating the number of books
6. most_common_genre : tells you the genre you read the most of




## Menu Functions

### Add Book
- Prompts the user to enter a title, author
- gets.chomps the users string
- exchanges “+” signs for the spaces
- splits the string on ‘,’ into author and title
- saves authors and title to variables
-sends it to the getter method

the getter method:
  - appends the string
  https://www.googleapis.com/books/v1/volumes?q=
with “intitle:#{title}+inauthor:#{author}
  - retrieves the JSON
  - parses it into a hash
  - finds the books description from the hash,
returns a hash with the authors name and book description

back in the commandlineInterface:
  - takes that description, stores it to a variable,
  - prints the author, title, and description to the console
  - puts’ is this correct’

- if yes,
  - book= book.new(Title)
  - find or update author return id
  - book.author = author

-  ask “what is the genre’
adds the genre to the book instance

book1.genre=bla
book1.update

- Prints the menu again.

- We still need to get the most popular genre
