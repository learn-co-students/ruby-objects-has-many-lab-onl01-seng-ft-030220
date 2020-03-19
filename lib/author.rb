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
  
  def add_post(post)
    post.author = self #associates this post to this instance of the Author class
  end
  
  def add_post_by_title(title)
    post = Post.new(title) #creates a new post
    post.author = self #then associates new post with the author
  end
  
  def posts 
    Post.all.select {|post| post.author == self}
  end
  
  def self.post_count 
    Post.all.count
  end
end