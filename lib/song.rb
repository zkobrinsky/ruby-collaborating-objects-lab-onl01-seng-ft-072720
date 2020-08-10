class Song

  attr_accessor :artist, :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    # file_name = 'Michael Jackson - Black or White - pop.mp3'
    filename.split(" - ")
    # song = self.new(song)
    # song.artist = song
  end


end
