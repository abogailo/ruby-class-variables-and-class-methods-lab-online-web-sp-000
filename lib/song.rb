class Song
 attr_accessor = :name, :artist, :genre
 @@count = 0
 #this counts stuffs
 @@artists = []
 #this is a class variable used by class method artists
 @@genres = []
 #this is a class variable used by class method genres

 def initialize(name, artist, genre)

   @name = name
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
   #this only grabs an artist one time. No Beyonce, beyonce in this list
 end

 def self.genres
   @@genres.uniq
   #this only grabs a genre once. There will be no duplicates.
 end

 def genre_count
   @@genres.each_with_object(Hash.new(0)) do |key, hash| 
     hash[key] += 1
   end
 end

 def artist_count
 end

end
