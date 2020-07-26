class Post
  
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
    if self.author
      self.author_name
    else
      nil
    end
  end
  
end