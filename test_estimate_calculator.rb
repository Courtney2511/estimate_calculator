require 'minitest/autorun'
require 'minitest/pride'

require_relative 'estimate_calculator'

class TestEstimateCalculator < Minitest::Test

  # test 5% markup to base
  def test_base_markup_0
    assert_equal 0, base_markup(0)
    assert_equal 105, base_markup(100)
    assert_equal 129.62, base_markup(123.45)
    assert_equal 1049.99, base_markup(999.99)
  end

end
