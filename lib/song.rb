class Song 
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    self.save
  end
  
  def self.all
    @@all  
  end
  
  def save
    @@all << self
  end
  
  def artist_name
      self.artist != nil ? self.artist.name : nil
  end
  
end