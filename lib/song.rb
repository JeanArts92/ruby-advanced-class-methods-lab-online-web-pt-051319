require 'pry'

class Song
  attr_accessor :name, :artist_name, :song_name
  
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  
  
  def self.create
    song = self.new 
    @@all << song 
    song
    #binding.pry
  end 
  
  def self.new_by_name(name)
    song = self.new 
    song.name = name 
    song 
    #binding.pry 
  end 
  
  def self.create_by_name(s_name)
    song = self.create
    song.name = s_name
    song 
    
    #binding.pry
  end 
  
  def self.find_by_name(name)
    self.all.find{|s| s.name == name}
  end 
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end 
  
  def self.alphabetical 
    self.all.sort_by{|s| s.name}
  end 
  
  def self.new_from_filename(file)
    song = file.split(" - ")
    artist_name = song[0]
    song_name = song[1].gsub(".mp3", "")
    song = self.new 
    song.song_name = song_name
    song.artist_name = artist_name 
    song 
    
  end
    
  end 
   
    
  
end 