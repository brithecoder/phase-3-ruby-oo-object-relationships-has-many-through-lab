class Artist 
  attr_reader :name
  @@all=[]
    def initialize (name)
       @name = name
        @@all << self
    end
     def self.all
        @@all 
     end
     def songs 
        song.all.select do |song|
            self ==song.artist 
        end
    end
     def new_song (name,genre)
        song.new(name,self,genre)
     end

     def genres 
        self.songs.map do |song|
            song.genre
        end
     end
end
