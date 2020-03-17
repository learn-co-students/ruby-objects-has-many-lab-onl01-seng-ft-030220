require 'pry'
class Artist
attr_accessor :name, :song

@@all = []

  def initialize(name, artist=nil)
    @name = name
    @@all << self 
  end 
  
  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self 
  end
  
  def add_song_by_name(name) 
    name= Song.new(name)
    add_song(name)
  end 

  # def songs
  #   song = song.new(name genre)
  # end

  def artist_name
    song.artist.name
  end 

  def songs
  Song.all.select do |title| title.artist == self
    end 
  end 
  
  # binding.pry

  def self.song_count
    Song.all.count
  end 

end 