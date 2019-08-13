class Author
  attr_reader :name
  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_article(magazine, title, content)
    Article.new(self, magazine, title, content)
  end

  def articles #CHECKED ARRAY/ INSTANCES
    Article.all.select{|art| art.author == self}
  end

  def my_magazines #HELPER METHOD
    articles.map{|art| art.magazine}
  end
  
  def magazines #DONE UNIQ ARRAY
    articles.map{|art| art.magazine}.uniq
  end

  def show_specialties
    my_magazines.map{|mag| mag.category}.uniq
  end

  def self.most_active
    author_list = Article.all.map{|art| art.author}
    author_list.max_by{|author| author_list.count(author)}
  end

   
  def self.most_verbose #DONE INSTANCE
    longest = Article.all.max_by{|article| article.content.length}
    longest.author
    
  end


end


