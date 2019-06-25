require 'pry'

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
        @@artists.push(artist)
        @@genres.push(genre)
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
        genreHash = {}
        self.genres.each do |type|
            genreCount = @@genres.count(type)
            genreHash[type] = genreCount
        end
        genreHash
    end
    def self.artist_count
        artistHash = {}
        self.artists.each do |musician|
            artistCount = @@artists.count(musician)
            artistHash[musician] = artistCount
        end
        artistHash
    end
end

ben = Song.new("ben",'benart','pop')
shan = Song.new("shan",'shanart','rap')
yos = Song.new("yos",'yosart','rap')
puts Song.genre_count