require 'rest-client'
require 'json'
require 'pry'


def get_book_data_from_title(title, author)
  #make the web request
  response_string = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=intitle:#{title}+inauthor:#{author}")
  response_hash = JSON.parse(response_string)

  desc = response_hash["items"][0]["volumeInfo"]

end
