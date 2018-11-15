
  def get_book_info
    puts "Enter the title"
    title=gets.chomp
    {title: title}
  end

  def is_correct?(info)
    puts "is this the correct book? #{info.inspect}"
    answer = gets.chomp.upcase
    if answer == "Y"|| answer == "YES"
      true
    elsif answer =="N"|| answer == "NO"
      false
    else puts "incorrect input"
      is_correct?(info)
    end
  end


  def read_book
    info=get_book_info
    book=Book.find_by(info)
    binding.pry
    if is_correct?(book)
      book.update(read?: true)
    end
  end
