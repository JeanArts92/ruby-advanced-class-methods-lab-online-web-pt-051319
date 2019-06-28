require 'pry'

class Song
  attr_accessor :name
  
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
  
  def self.create_by_name(name)
    song = self.new
    song.name = name
    song
    
    #binding.pry
  end 
    
  
end 