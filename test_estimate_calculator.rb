require 'minitest/autorun'
require 'minitest/pride'

require_relative 'estimate_calculator'

# tests for estimate calculator
class TestEstimateCalculator < Minitest::Test
  # test 5% markup to base
  def test_base_markup
    assert_equal 0, base_markup(0)
    assert_equal 4.95, base_markup(99)
    assert_equal 6.17, base_markup(123.45)
    assert_equal 50.00, base_markup(999.99)
  end

  # test 1.2% markup per worker to base
  def test_worker_markup
    assert_equal 0, worker_markup(0, 0)
    assert_equal 1.2, worker_markup(100, 1)
    assert_equal 3.6, worker_markup(100, 3)
    assert_equal 84.00, worker_markup(999.99, 7)
  end
end
