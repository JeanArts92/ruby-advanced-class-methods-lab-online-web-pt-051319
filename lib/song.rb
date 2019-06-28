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
  
  def self.new_by_name
    song = self.new(name)
    
  end 
    
  
end 