class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :genre
  has_many :users, through: :book_users


  def self.list
    Book.all.map{|book|"Title:#{book.title} \n Author: #{book.author.name} \n Genre:#{book.genre.name}"}
  end


end
