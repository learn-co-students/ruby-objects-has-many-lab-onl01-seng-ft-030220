require 'pry'
class Author
attr_accessor :name, :post

@@all = []

  def initialize(name, author=nil)
    @name = name
    @@all << self 
  end 
  
  def self.all
    @@all
  end

  def add_post(post)
    post.author = self 
  end
  
  def add_post_by_title(post_name) 
    name= Post.new(post_name)
    add_post(name)  
    # post.author = self 
    end 

  # def songs
  #   song = song.new(name genre)
  # end

  def author_name
    post.author.name
  end 

  def posts
  Post.all.select do |title| title.author == self
    end 
  end 
  
  # binding.pry

  def self.post_count
    Post.all.count
  end 

end 