class Song
attr_accessor :name, :artists, :genres


@@count = 0

@@artists = []

@@genres = []

@@genre_count = {}

@@artist_count = {}

def initialize(name, artist, genre)
@name = name
@artist = artist
@genre = genre
@@count += 1
end

def self.count
   @@count
end



end
