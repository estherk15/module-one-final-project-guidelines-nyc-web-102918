class Genre < ActiveRecord::Base
  has_many :books
  has_many :authors, through: :books

  def self.genre_count #returns an array containing a string, with a count of each genre.
    self.all.map{|genre|"#{genre.name}: #{genre.books.count}"}
  end
  #Is there a way to sort this so that we can easily pull the highest count

  def self.favorite_genre
    favorite_genre= self.all.max{|a,b|a.books.length <=> b.books.length}
    favorite_genre.name
  end

   #returns #<Genre:0x007fb87544bbe8 id: 8, name: "Religion">=>1
  end
  #We still need to get the most popular genre
