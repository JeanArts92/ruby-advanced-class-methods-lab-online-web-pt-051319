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
    @@all.collect{|s| s.name.sort}
  end 
   
    
  
end 