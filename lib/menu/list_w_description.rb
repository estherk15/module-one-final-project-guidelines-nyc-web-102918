def list_w_description
  puts " 1. List books I've read \n 2. List books i'm still working on \n 3. List all books"
  input=gets.chomp
  case input
  when "1"
    puts Book.list_everything_read
  when "2"
    puts Book.list_everything_not_read
  when "3"
    puts Book.list_everything
  else
    puts "invalid input"
    list
  end
end
