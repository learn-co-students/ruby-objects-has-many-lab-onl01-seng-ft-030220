require 'pry'

class Post 

  attr_accessor :title, :author, :name
  
  @@all = []
  
  def initialize(title)
    @title = title
    self.save
  end

  def self.all
    @@all  
  end
  
  def save
    @@all << self  
  end
  
  def author_name
    self.author != nil ? self.author.name : nil
  end

end