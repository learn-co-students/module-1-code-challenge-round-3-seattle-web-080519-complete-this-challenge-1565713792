require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


author1 = Author.new("Bob")
author2 = Author.new("Sam")
author3 = Author.new("Marc")
author4 = Author.new("Frank")

mag1 = Magazine.new("Video Game Weekly", "Video Games")
mag2 = Magazine.new("Farming Weekly","Farming")
mag3 = Magazine.new("Horses Weekly","Horses")
mag4 = Magazine.new("Cars Weekly", "Cars")
mag5 = Magazine.new("Camping Weelk","Camping")
mag6 = Magazine.new("Travel Weekly","Travel")


art1 = Article.new(author1, mag1, "Play Games", "This has 4 words")
art2 = Article.new(author1, mag2, "Go Farming", "This has 7 words now yes it")
art3 = Article.new(author3, mag3, "Ride Horses", "This has 6 words now yes")
art4 = Article.new(author2, mag4, "Drive Cars", "This has 4 words")
art5 = Article.new(author2, mag6, "Go Camping", "This has 5 words now")
art6 = Article.new(author4, mag6, "Go Places", "This has 4 words")





### DO NOT REMOVE THIS
binding.pry

0
