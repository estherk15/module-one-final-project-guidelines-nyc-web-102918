
  def select_book
    puts "which book did you read? (enter a number)"
    puts Book.all.map{|book|"\n#{book.id}: #{book.title}"}
    book_id=gets.chomp
    Book.find(book_id)

  end
  def read_book
  select_book.update(read?: true)
  puts "your book has been marked as read"
  prompt_user
    end
