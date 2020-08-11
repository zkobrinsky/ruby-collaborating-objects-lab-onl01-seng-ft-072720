require "pry"

class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def self.all
    @@all
  end

  def add_song(song_obj)
    # binding.pry
    self.songs << song_obj
  end

  def save
    @@all << self
  end

  def songs
    # Songs.all.detect{|artist| artist == self.name}
    @songs
  end

  def self.find_or_create_by_name(name)
    @@all.detect{|i| i.name == name} ? @@all.detect{|i| i.name == name} : self.new(name)
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

  def self.create(name)
   artist = Artist.new(name)
   artist.save
   artist
 end


end
