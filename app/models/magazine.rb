class Magazine
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all 
  end

  # Given a string of magazine's name, this method returns the first magazine object that matches 
  def self.find_by_name(given_name) #DONE
    self.all.find do |m|
      m.name == given_name
    end
  end

  #Returns an array of the titles of all articles written for that magazine
  def article_titles #DONE
    arr = Article.all.select do |a|
      a.magazine == self
    end
    arr.collect do |a|
      a.title 
    end
  end

  #Returns an array of Author instances who have written for this magazine
  def contributors #DONE
    arr = Article.all.select do |a|
      a.magazine == self
    end
    arr.collect do |a|
      a.author
    end
  end

  #Returns a number that is the total number of words for all of the articles in this magazine
  def word_count #DONE
    arr = Article.all.select do |a|
      a.magazine == self
    end
    arr.collect do |a|
      a.word_count 
    end.sum
  end

end
  #I realize I could have written a helper method purely doing the 'arr' (.select) methods I've assigned per method; but purely for the sake of keeping track of what I was doing this time around, I restated them each time. 
