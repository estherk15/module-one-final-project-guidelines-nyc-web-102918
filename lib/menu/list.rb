def list
  puts " 1. List books I've read \n 2. List books I'm still working on \n 3. List all books"
  input=gets.chomp
  case input
    when "1"
      puts Book.list_read
    when "2"
      puts Book.list_not_read
    when "3"
      puts Book.list
    else
      puts "Invalid input"
      list
  end
end
