class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres=[]

    def initialize(name, artist, genre)
        @name =name
        @artist=artist
        @genre=genre
        @@count +=1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end

end



# class of Song should
#  1 - Keep track of how many songs were initialized (.count)
#  2 - Keep track of the artists name (.artists)
#  3- Keep track of genres
#  4- Keep track of each genre's songs in a hash like {'rap' => 5, ...}
#  5 - reveal how many songs each artist has {'Beyonce' => 17, ...}

