class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :genre
  has_many :users, through: :book_users


  def self.list
    Book.all.map{|book|"Title:#{book.title} \n Author: #{book.author.name} \n Genre:#{book.genre.name}"}
  end

  def self.list_everything
    Book.all.map{|book|"\n Title:#{book.title} \n Author: #{book.author.name} \n Genre:#{book.genre.name} \n Description: #{book.description[0..500]}..."}
  end

  def mark_read
    self.read == true
  end




end
