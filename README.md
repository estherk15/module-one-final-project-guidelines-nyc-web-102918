# Reading Tracker

The more that you read, the more things you will know. The more that you learn, the more places you’ll go. —Dr. Seuss

Have you ever wondered which books you have read in any given year? The Reading Tracker can give you that answer!
The Reading Tracker is a program to help you, the reader, track all the books you have read!

## Usage example

Socrates believed that the unexamined life was not worth living. While an extreme example, we believe that by knowing what and how you read, you can only make yourself a more mindful reader. So lets get started!

When you open the program, the menu will prompt you to input one of the listed options. The program will accept either the number or the value.
Example.

```
// ♥ruby bin/run.rb
  Please enter one of the following commands (by name or number):

  1. LIST : View all books in my list, with their author and genre

  2. LIST W/DESCRIPTION: View all books, with their author and descriptions

  3. ADD BOOK : Add a book to your reading list

  4. GENRES: List genres in your list, with a count indicating the number of books

  5. FAVORITE GENRE : tells you the genre you read the most of.

  6. Exit:  Exit the program

3 #==>This is your input
```
Depending on which option you input, the program may prompt you for additional input. If you’re following along the example, let’s see what the Add Book feature will do. Also, if you need to go back to the menu type ```menu```. If you wish to exit the program type ```exit``` or ```6```

After you press ```add book``` or ```3```, you should see ```Enter  the title```. Here you can add a title of a book you have read.

The next prompt should be ```Enter the author```. If you only know the first or last name, try it and see if Google Books will find your book.

If the Google Books suggestion matches the book you wish to enter, press ```y```. Else, follow the prompts. Congratulations! You’ve entered your first book into your reading tracker.


## License

Distributed under the XYZ license. See ``LICENSE`` for more information.


## Contributing

1. Fork it (<https://github.com/estherk15/module-one-final-project-guidelines-nyc-web-102918.git>)
2. Create your feature branch (`git checkout -b feature/reader`)
3. Commit your changes (`git commit -am 'Add some reader'`)
4. Push to the branch (`git push origin feature/reader`)
5. Create a new Pull Request
