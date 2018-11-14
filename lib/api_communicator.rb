require 'rest-client'
require 'json'
require 'pry'

def get_book_data_from_title(title, author)
  #make the web request
  if(author)
  response_string = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=intitle:#{title}+inauthor:#{author}")
else
  response_string = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=intitle:#{title}")
end
  response_hash = JSON.parse(response_string)
  data = response_hash["items"][0]["volumeInfo"] # get description
  title= data["title"]
  author=data["authors"][0]
  description=data["description"]
  pages=data["pageCount"]
  book_info={title: title, author: author, description:description, pages:pages}
# binding.pry
end

# get_book_data_from_title("The Namesake", "Jhumpa Lahiri")
