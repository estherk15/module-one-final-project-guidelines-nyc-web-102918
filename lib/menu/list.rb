def list
  puts " 1.list books i've read \n 2. List books i'm still working on"
  input=gets.chomp
  case input
  when "1"
    puts Book.list_read
  when "2"
    puts Book.list_not_read
  else
    puts "invalid input"
    list
  end
end
