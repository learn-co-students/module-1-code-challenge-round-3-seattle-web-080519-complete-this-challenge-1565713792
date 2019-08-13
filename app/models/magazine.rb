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

  # @@all.find{|cult| cult.name == var_name}

  def self.find_by_name(name)
    @@all.find{|name| magazine.name == name}
  end 

  def article_titles
    Article.all.collect {|article_tit| article_tit.title}
  end 

  def contributors
    Article.all.select {|article| article.author == self}
  end 

  # def word_count

  # end 


end
