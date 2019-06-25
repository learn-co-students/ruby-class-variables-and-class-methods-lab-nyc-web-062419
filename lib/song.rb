class Song

attr_reader :name, :artist, :genre
# attr_writer :artist, :genre
@@count = 0
@@artists = []
@@genres = []

def initialize(name, artist, genre)
  @@count +=1
  @name = name
  @artist = artist
  @genre = genre

  @@artists << @artist
  @@genres << @genre
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
  genre_count = {}
  @@genres.each do |genra|
    if genre_count[genra]
      genre_count[genra] +=1
    else
      genre_count[genra] = 1
end
end
genre_count
end


def self.artist_count
  artist_count = {}
  @@artists.each do |artist|
    if artist_count[artist]
      artist_count[artist] += 1
    else
      artist_count[artist] = 1
end
end
artist_count
end

end

# song = Song.new("name", "artist", "genre")
#
# Song.count
