class Song

  attr_accessor :name, :artist, :song

  @@all = []

  def initialize(name)
    self.name = name
    @@all << self

  end

  def artist_name
    if self.artist == nil
      return nil
    else
      return self.artist.name
    end
  end

  def self.all
    @@all
  end

end
