class Genre
  attr_reader :name
  def initialize(name)
    @name = name
    @@all << self
  end
  @@all = []
  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    songs.map do |song|
      song.artist
    end
  end

end
