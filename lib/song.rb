class Song
attr_accessor :name, :artist, :genre

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def artist_name
    if self.artist
    self.artist.name
    end
  end 
 
  def self.all 
      @@all
  end 

  def songs(name, genre)
    @@all 
  end 


end 
 