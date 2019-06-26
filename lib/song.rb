require "pry"
class Song
    @@artists = []
    @@count = 0 
    @@genres = []
    attr_reader :name, :artist, :genre
    def initialize name,artist,genre
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
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
        x = {}
        self.genres.map do |genre|
            x[genre] = @@genres.count(genre)
        end
        x
    end
    def self.artist_count
        x = {}
        self.artists.uniq.map do |artist|
            x[artist] = @@artists.count(artist)
        end
        x
    end
end