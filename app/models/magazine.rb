class Magazine #CHECKED
  attr_accessor :name, :category 
  @@all = []


  def initialize(name, category)
    @name = name
    @category = category
    @@all << self

  end

  def self.find_by_name(name) #DONE / TESTED "FARMING WEEKLY"
    @@all.find{|magazine| magazine.name == name}
  end

  def my_articles #HELPER METHOD
    Article.all.select{|art| art.magazine == self}
  end

  def article_titles #ARRAY / TITLES
    my_articles.map{|art| art.title}
  end

  def contributors #ARRAY / INSTANCE
    my_articles.map{|art| art.author}
  end

  def word_count #DONE / NUMBER
    art_content = my_articles.map{|art| art.content}
    joined_content = art_content.join(",")
    split_content = joined_content.split(" ")
    split_content.count
  end


  def self.all
    @@all
  end


end
