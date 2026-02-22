require "capybara/minitest"

class CapybaraTestCase < Minitest::Test
  include Capybara::DSL
  include Capybara::Minitest::Assertions

  Capybara.current_driver = :selenium_headless

  def initialize(super_arg)
    super(super_arg)
    visit("http://localhost:4000") # hoping that port 4000 is pretty universal
  end

  def test_basic_calc
    assert_equal("140+ SpA Abomasnow-1 Blizzard (spread) vs. 236 HP / 0 SpD Abomasnow-1: 63-75 (32.3 - 38.5%) -- 97.3% chance to 3HKO", find("#mainResult").text)
  end

end