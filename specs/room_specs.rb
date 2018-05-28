require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")
require_relative("../song.rb")
require_relative("../room.rb")

class TestRoom<MiniTest::Test

  def setup

#wonder if the following is redudant? I should probably get
# the songs and the guest from their respective specs.

    @song1 = Song.new("Smoke on the Water")
    @song2 = Song.new("Atmosphere")
    @song3 = Song.new("Galaxies")
    songs = [@song1, @song2, @song3]

    @guest1 = Guest.new("Stephan", "Smoke on the Water")
    @guest2 = Guest.new("Joanna", "Atmosphere")
    @guest3 = Guest.new("Henry", "Galaxies")

    @room = Room.new("Rock Room", 20, songs)

  end

  def test_room_name
    assert_equal("Rock Room", @room.name)
  end

  def test_capacity
    assert_equal(20, @room.capacity)

  end
  # def test_room_has_no_songs
  #   assert_equal(0, @room.songs_count)
  # end

  def test_room_has_songs
    assert_equal(1, @room.songs_count)
  end
  # def test_room_guest_check_in
  #   assert_equal(1,room.guests)
  # end

  # there's a question of checking the capacity of the room beofre allowing the guest in

  # def test_room_guest_check_out
  #   assert_equal(1, room.guests)
  # end
end
