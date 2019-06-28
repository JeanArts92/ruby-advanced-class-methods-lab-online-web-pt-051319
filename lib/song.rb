class Song 
  attr_accessor :name
  
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  def self.create
    song = self.new(name)
    self.all << self 
    song 
  end 
    
  
end 