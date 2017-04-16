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
	@@genres << genre
	@@artists << artist
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
	gcount = Hash.new(0)
	@@genres.each do |genre|
		gcount[genre] += 1
	end
	gcount
end

def self.artist_count
	acount = Hash.new(0)
	@@artists.each do |artist|
		acount[artist] += 1
	end
	acount
end

end
