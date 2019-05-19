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

 def artists
   @@artists.uniq
   #this only grabs an artist one time. No Beyonce, beyonce in this list
 end  

 def genres
   @@genre.uniq
   #this only grabs a genre once. There will be no duplicates.
 end

 def genre_count
   array = {}
   @@genres.each do |genre|
  array[]<< artist
  array.count
 end

 def artist_count
   array = {}
   @@artists.each do |artist|
  array[] << artist
  array.count
 end

end