require 'minitest/autorun'
require 'minitest/pride'

require_relative 'estimate_calculator'

# tests for estimate calculator
class TestEstimateCalculator < Minitest::Test
  # test 5% markup to base
  # def test_flat_markup
  #   assert_equal 0, flat_markup(0)
  #   assert_equal 4.95, flat_markup(99)
  #   assert_equal 6.17, flat_markup(123.45)
  #   assert_equal 50.00, flat_markup(999.99)
  # end
  #
  # # test 1.2% markup per worker to base
  # def test_worker_markup
  #   assert_equal 0, worker_markup(0, 0)
  #   assert_equal 1.2, worker_markup(100, 1)
  #   assert_equal 3.6, worker_markup(100, 3)
  #   assert_equal 84.00, worker_markup(999.99, 7)
  # end
  #
  # def test_cost_before_materials_markup
  #   assert_equal 0, cost_before_material_markup(0, 0)
  #   assert_equal 1086, cost_before_material_markup(1000, 3)
  #   assert_equal 1133.99, cost_before_material_markup(999.99, 7)
  # end

  def test_estimate_calculator
    assert_equal 1591.58, estimate_calculator(1299.99, 3, 'food')
    assert_equal 6199.81, estimate_calculator(5432.00, 1, 'drugs')
    assert_equal 13_707.63, estimate_calculator(12_456.95, 4, 'books')
  end
end
