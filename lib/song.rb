class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
  end
  
  def self.create
    song = self.new 
    song.save
    song 
  end 
  
  def self.new_by_name(song_name)
    song = Song.create
    song.name = song_name
    song
  end
  
  def self.create_by_name(song_name)
    Song.new_by_name(song_name)
  end 
  
  def self.find_by_name(song_name)
    @@all.find(){|name| puts name if name == song_name }
  end 

end
