class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :genre
  has_many :users, through: :book_users
end
