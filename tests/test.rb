require 'tests/test_helper.rb'

class TestProblem < Minitest::Test
  def setup
    @p = Problem.new
  end

  def test_is_true
    assert_equal true, @p.bool
  end

  def test_reverse
    assert_equal 'nocab yknuhc'.reverse, @p.reverse
  end

  def test_upcase
    assert_equal @p.upcase, "HELLO WORLD"
  end

  def test_maximum
    assert_equal @p.maximum([2,42,22,02]), 42
  end

  def test_nil_values
    @p.nil_values.each { |v| assert_equal v.nil?, false }
  end

  def test_map_arr
    assert_equal [1, 4, 9, 16], @p.map_arr
  end

  def test_fizzbuzz
    assert_equal @p.fizzbuzz(3), "Fizz"
    assert_equal @p.fizzbuzz(50), "Buzz"
    assert_equal @p.fizzbuzz(15), "FizzBuzz"
    assert_equal @p.fizzbuzz(5175), "FizzBuzz"
  end

  def test_delete_nil
    assert_equal @p.delete_nil, 30
  end
end
