class Song

  attr_accessor :artist, :name, :genre

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)

    @name = filename.split(" - ")[1]
    song = self.new(@name)
    song.artist_name=(filename.split(" - ")[0])
    # binding.pry
    song
  end

  # def self.new_by_filename(filename)
  #   # binding.pry
  #   @name = filename.split(" - ")[1]
  #   @artist = artist_name=(filename.split(" - ")[0])
  #   song = self.new(@name)
  #   song.artist = @artist
  #   song
  #   # binding.pry
  # end

  def artist_name=(artist_name)
    # binding.pry
    if Artist.all.detect{|name| name.name == artist_name}
      self.artist = Artist.all.detect{|name| name.name == artist_name}
    else
      self.artist = Artist.new(artist_name)
    end

    # Artist.find_or_create_by_name(artist_name)
    # artist.add_song(self)

  end

end
