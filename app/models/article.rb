class Article
    attr_accessor :title, :content
    attr_reader :author, :magazine #CHECKED
    @@all = []

    def initialize(author, magazine, title, content)
        @author = author
        @magazine = magazine 
        @title = title
        @content = content
        @@all << self
    end

    def self.all 
        @@all
    end



end
