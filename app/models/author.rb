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
  def self.most_verbose
    most = Aritcle.all.collect {|article| article.author.name}
    most.max_by {|author| max.count(author)}
  end 

  def add_artice(magazine, title, content)
    # binding.pry
    Aritcle.new(magazine, title, self)
  end 

  def articles
    Aritcle.all.select do |article| article.name == self
    end
      end 

  def magazines
    articles.uniq
  end 

  def self.most_active
    @@all.select do |article| article.content
    end

  end 

end
