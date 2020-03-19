class Post 
  
  @@all = []

  attr_accessor :title, :author, :name
  
  def initialize(title)
    @title = title
    @@all << self
  end 
  
  def self.all
    @@all
  end
  
  def author_name
    author.name if author
  end
    
  
  
end