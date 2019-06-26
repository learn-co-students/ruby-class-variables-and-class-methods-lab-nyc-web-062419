class Song
    attr_accessor :name, :artist, :genre
    @@count = 0 
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_hash = Hash.new(0)
        @@genres.each { |item| genre_hash[item] += 1}
        genre_hash
    end

    def self.artist_count
        artist_hash = Hash.new(0)
        @@artists.each { |item| artist_hash[item] += 1}
        artist_hash
    end
# array.each {|item| new_hash[item] += 1}


end