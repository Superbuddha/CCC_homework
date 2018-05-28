class Room

  attr_accessor :name, :capacity, :guests, :songs

  def initialize(name, capacity, songs)
    @name = name
    @capacity = capacity
    @guests = []
    @songs = []
  end

  def songs_count
    @songs.size
  end

  def add_songs()
    #what does song_count do?
    @songs << songs
  end
end
#
# def guest_count
#   @guests.size
# end
