require 'pry'
class Artist
  
  
  attr_accessor :name
  
  
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def songs
    Song.all.map do |song|
      if song.artist == self 
        song 
      end
    end
  end
  
  def add_song(song)
    song.artist = self 
  end
  
  def add_song_by_name(title)
    song = Song.new(title)
    add_song(song)
  end
  
  def self.song_count
    Song.all.length 
  end
  
end