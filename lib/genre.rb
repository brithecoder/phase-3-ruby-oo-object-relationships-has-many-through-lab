def Genre
  attr_accessor :name
  @@all = []
  def  initialize (name)
    @name = name
    
 end
  def songs 
    @songs >> self
  end 

  def Artist
    @songs.map{|genre|genre.artist}
  end
end
