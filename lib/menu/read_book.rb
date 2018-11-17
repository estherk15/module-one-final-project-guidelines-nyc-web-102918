
  def select_book(val)
    puts "which book did you read? (enter a number)"
    puts Book.where(read?: val).map{|book|"\n#{book.id}: #{book.title}"}
    book_id=gets.chomp
    Book.find(book_id)

  end
  def read_book
  select_book(reading).update(read?: "read")
  puts "your book has been marked as read"
  prompt_user
    end

    def start_reading_book
    select_book(nil).update(read?: "reading")
    puts "your book has been marked as read"
    prompt_user
      end
