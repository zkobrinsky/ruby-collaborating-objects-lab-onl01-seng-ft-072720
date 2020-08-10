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

  # def self.new_by_filename(filename)
  #   @name = filename.split(" - ")[1]
  #   @artist = Artist.new(filename.split(" - ")[0])
  #   song = self.new(@name)
  #   song.artist = @artist
  #   # genre = filename.split(" - ")[2]
  #   # @genre = genre.split(".")[0]
  #   # song.genre = @genre
  #   @@all << song
  #   song
  #   binding.pry
  #
  #   # if Artist.all.detect{|song| song.name == @name}
  #
  #   # 5) Song .new_by_filename associates new song instance with the artist from the filename
  #   # Failure/Error: expect(Artist.all.first.songs.empty?).to eq(false)
  #   #   expected: false
  #   #        got: true
  # end

  def self.new_by_filename(filename)
    @name = filename.split(" - ")[1]
    @artist = Artist.new(filename.split(" - ")[0])
    song = self.new(@name)
    song.artist = @artist
    @@all << song
    song
end
