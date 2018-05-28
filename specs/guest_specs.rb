require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")
require_relative("../song.rb")

class TestGuest<MiniTest::Test

  def setup()
    @guest1 = Guest.new("Stephan", "Smoke on the Water")
    @guest2 = Guest.new("Joanna", "Atmosphere")
    @guest3 = Guest.new("Henry", "Galaxies")
  end

  def test_guest_name
    assert_equal("Stephan", @guest1.name)
  end
end
