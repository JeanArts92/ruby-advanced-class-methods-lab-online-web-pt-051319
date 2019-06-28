class Song 
  attr_accessor :name
  
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  def self.create(name)
    song = self.new(name)
    self.all << self 
    song 
  end 
    
  
end 