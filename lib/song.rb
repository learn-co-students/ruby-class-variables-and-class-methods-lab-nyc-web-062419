class Song
    @@artists = []
    @@genres =[]
    @@count = 0 

    attr_accessor :name,:artist,:genre
    def initialize name,artist,genre
        @name =name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
        @@count += 1
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
        genre_tracker = {}
        @@genres.each do |genre,count|
            if genre_tracker.keys.any?(genre)
                genre_tracker[genre] += 1
            else 
                genre_tracker[genre] = 1
            end
        end
        genre_tracker
    end
    def self.artist_count 
        artist_tracker = {}
        @@artists.each do |artist,count|
            if artist_tracker.keys.any?(artist)
                artist_tracker[artist] += 1
            else 
                artist_tracker[artist] = 1
            end
        end
        artist_tracker
    end

end