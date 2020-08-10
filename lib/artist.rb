require "pry"

class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(name)
    song = Song.new(name)
    @songs << song.name
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    @@all.detect{|i| i.name == name} ? @@all.detect{|i| i.name == name} : self.new(name)
  end

  def print_songs
    songs.each {|song| puts song.name}
  end


end
