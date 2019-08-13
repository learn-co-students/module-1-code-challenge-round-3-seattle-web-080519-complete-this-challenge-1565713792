class Author
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all 
  end
  
  #Returns the Author instance who has the longest article by word count
  def self.most_verbose #DONE
    arr = Article.all.select do |a|
      a.author
    end
    arr.max_by do |a|
      a.word_count
    end
  end   

  #Given a magazine (as Magazine instance), a title (as a string), and content (as a string), this method creates a new Article instance and associates it with that author and that magazine.
  def add_article(magazine, title, content) #DONE
    Article.new(self, magazine, "title", "content", "word_count")
  end

  #Returns an array of Article instances the author has written
  def articles #DONE
    Article.all.select do |m|
      m.author == self
    end
  end

  #Returns a unique array of Magazine instances for which the author has contributed to
  def magazines #DONE
    arr = Article.all.select do |m|
      m.author == self
    end
    arr.collect do |a|
      a.magazine
    end.uniq
  end

  #Returns a unique array of categories of the magazines for which the author has contributed to
  def show_specialties #DONE
    self.magazines.collect do |a|
      a.category
    end.uniq
  end 

  #Returns the Author instance who has written the greatest number of articles 
  def self.most_active #DONE
    arr = Article.all.collect do |a|
      a.author
    end
    arr.max_by { |a| arr.count(a) }
  end

end
