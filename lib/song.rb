class Song
  attr_accessor :artist, :name

  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def initialize(name)
    self.name = name
    self.save
  end

  def artist_name
    self.artist.name if self.artist
  end
end
