class Genre
    attr_accessor :name
    @@all = []
    def initialize(name) 
        self.name = name
        @@all << self
    end

    def songs
        Song.all.select do |song|
            # binding.pry
            song.genre == self
        end
    end

    def artists
        Artist.all.select do |song|
           song.songs
        end
    end

    def self.all
        @@all
    end
end