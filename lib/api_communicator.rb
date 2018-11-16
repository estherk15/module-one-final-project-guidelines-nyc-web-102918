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

  if response_hash["items"]
    data = response_hash["items"][0]["volumeInfo"]
  end
  # get info
  if(data)
    title= data["title"]
    author=data["authors"][0]
    description=data["description"]
    pages=data["pageCount"]
    if description
      book_info={title: title, author: author, description:description, pages:pages}
    else
      book_info={title: title, author: author, description: "no description for this title", pages:pages}
    end
  else puts "No results, check your spelling please"
    ask_for_book
  end

end
