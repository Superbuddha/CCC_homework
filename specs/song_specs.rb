require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class TestSong<MiniTest::Test

  def setup
    @song1 = Song.new("Smoke on the Water")
    @song2 = Song.new("Atmosphere")
    @song3 = Song.new("Galaxies")
  end

  def test_song_name()
    assert_equal("Galaxies", @song3.name)
  end
  #
  # def test_song_author()
  #   assert_equal("Deep Purple", @song1.author)
  # end

end
