class Author
  
  attr_accessor :name
  
  @@post_count = 0
  
  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select {|post| post.author == self }
  end
  
  def add_post(title)
    song.artist = self
    @@post_count += 1
  end
  
  def add_post_by_title(title)
    song1 = Song.new(title)
    add_song(song1)
    @@post_count += 1
  end
  
  def self.post_count
    @@post_count
  end
  
end