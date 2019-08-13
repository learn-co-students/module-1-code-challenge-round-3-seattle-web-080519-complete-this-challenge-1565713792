class Article
    attr_accessor :author, :magazine, :title, :content, :word_count
    @@all = []

    def initialize(author, magazine, title, content, word_count)
        @author = author
        @magazine = magazine
        @title = title
        @content = content
        @word_count = word_count
        @@all << self
    end

    def self.all
        @@all 
    end

end
