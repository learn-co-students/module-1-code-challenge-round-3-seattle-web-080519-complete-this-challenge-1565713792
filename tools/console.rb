require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
steinbeck = Author.new("John Steinbeck")
wilde = Author.new("Oscar Wilde")
vonnegut = Author.new("Kurt Vonnegut")
hemingway = Author.new("Ernest Hemingway")

newyorker = Magazine.new("New Yorker", "news")
vanityfair = Magazine.new("Vanity Fair", "lifestyle")
vogue = Magazine.new("Vogue", "fashion")
travel = Magazine.new("Travel", "travel")

a1 = Article.new(steinbeck, newyorker, "oh", "serious", 550)
a2 = Article.new(wilde, vanityfair, "ooo", "chic", 1000)
a3 = Article.new(vonnegut, vogue, "yess", "it", 300)
a4 = Article.new(hemingway, travel, "wanderlust", "dreamy", 820)
a5 = Article.new(wilde, vogue, "fab", "edgy", 240)


### DO NOT REMOVE THIS
binding.pry

0
