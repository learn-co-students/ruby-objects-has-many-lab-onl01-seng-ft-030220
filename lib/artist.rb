class Artist 
  attr_accessor :name 
  
  @@all =[]
  def initialize (janet)
    @name = janet
    @@all << self
  end
  
  def self.all
    @@all 
  end
    def add_song(song)
    song.artist = self 
  end 
  
  def add_song_by_name(janet)
    song = Song.new(janet)
    song.artist = self
  end
  
 def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.song_count
    Song.all.count
  end 
end  

