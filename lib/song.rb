require 'pry'

class Song 
  attr_accessor :name
  
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  def self.create
    song = self.new 
    song 
    #binding.pry
  end 
    
  
end 