# Please copy/paste all three classes into this file to submit your solution!
"require_all"

author1 = Author.new("Marisa")
author2 = Author.new("Angela")
author3 = Author.new("Roni")

magazine1 = Magazine.new("Seattle Times", "Horror")
magazine2 = Magazine.new("NY Times", "Spooky")
magazine3 = Magazine.new("California Times", "Fun")


article1 = Article.new(author1, magazine1)
article2 = Article.new(author2, magazine2)
article3 = Article.new(author3, magazine3)
article4 = Article.new(author1, magazine3)

binding.pry
0
