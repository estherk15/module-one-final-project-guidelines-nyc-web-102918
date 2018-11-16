class Genre < ActiveRecord::Base
  has_many :books
  has_many :authors, through: :books

  def self.genre_count #returns an array containing a string, with a count of each genre.
    self.all.map{|genre|"#{genre.name}: #{genre.books.count}"}
  end

  def self.favorite_genre
    favorite_genre= self.all.max{|a,b|a.books.length <=> b.books.length}
    favorite_genre.name
  end
  
end #class Genre
