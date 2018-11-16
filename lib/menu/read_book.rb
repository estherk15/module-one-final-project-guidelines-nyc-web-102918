
def select_book
  puts "Which book did you read? (Enter a number)"
  puts Book.where(read?: nil).map{|book|"#{book.id}: #{book.title}"}
  book_id=gets.chomp
  if Book.find(book_id)
    Book.find(book_id)
  else
    puts "Invalid input, please choose a number from the list"
    select_book
  end 
end

def read_book
  select_book.update(read?: true)
  puts "Your book has been marked as read"
  prompt_user
end
