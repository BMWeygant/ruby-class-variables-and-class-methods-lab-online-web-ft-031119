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
  genre_count = {} #creates empty hash
  @@genres.each do |genre| #iterates through an array containing data
    if genre_count[genre] # establishes each seperate piece of data as a key in empty hash
      genre_count[genre] += 1 # increases the value of the appropraite genre's key for every song
    else
      genre_count[genre] = 1 #genre simply being recognized means there is at least 1 song count, so no other songs means genre = 1
    end
  end
  genre_count
end
end
