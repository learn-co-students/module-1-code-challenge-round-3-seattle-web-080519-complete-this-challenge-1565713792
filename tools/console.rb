require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

###  WRITE YOUR TEST CODE HERE ###

#name 
author1 = Author.new("Marisa")
author2 = Author.new("Angela")
author3 = Author.new("Roni")

#(name, category)
magazine1 = Magazine.new("Seattle Times", "Horror")
magazine2 = Magazine.new("NY Times", "Spooky")
magazine3 = Magazine.new("California Times", "Fun")

#(author, magazine, title, content)


article1 = Article.new(author1, magazine3, "What", "bla")
article2 = Article.new(author2, magazine1, "The", "idk")
article3 = Article.new(author2, magazine2, "Seattle", "hi")
article4 = Article.new(author3, magazine3, "Oregon", "bye")

Magazine.find_by_name("Marisa")



### DO NOT REMOVE THIS
binding.pry

0
