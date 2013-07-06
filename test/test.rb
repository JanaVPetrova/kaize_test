require 'test_helper'

SimpleCov.command_name 'Unit Tests'

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

  def test_blackjack
    assert_equal @p.blackjack(3, 4, 5, 6, 3), true
    assert_equal @p.blackjack(3, 11, 10), false
    assert_equal @p.blackjack(10, 11), true
  end

  def test_even
    assert_equal @p.even([1, 3, 7, 4, 9, 8]), 4
  end

  def test_temperature_bot
    assert_equal @p.temperature_bot(18), "I like this temperature"
    assert_equal @p.temperature_bot(21), "I like this temperature"
    assert_equal @p.temperature_bot(22), "This is uncomfortable for me"
    assert_equal @p.temperature_bot(-3), "This is uncomfortable for me"
  end

  def test_sum_over_50
    assert_equal @p.sum_over_50([29, 52, 77, 102]), 231
    assert_equal @p.sum_over_50([5, 11, 50]), 0
    assert_equal @p.sum_over_50([4, 8, 15, 16, 23, 42]), 0
    assert_equal @p.sum_over_50([300, 22, 1, 55, 42]), 355
  end
  
  def test_dave
    assert_equal @p.dave, "My mind is going Dave"
  end

  def test_home_on_the_range
    assert_equal @p.home_on_the_range, 4494
  end
 
  def test_arr_item_removal
    assert_equal @p.arr_item_removal, [:b, :q]
  end

  def test_roses_color
    assert_equal @p.roses_color, "red"
  end

  def test_violets_color
    assert_equal @p.violets_color, "blue"
  end

  def test_sugar
    assert_equal 2.+(2), 2 + 2
    assert_equal 40.+(2), 42
  end

  def test_helloworld
    assert_equal @p.helloworld, "HelloWorld"
  end

  def test_or_equal
    assert_equal @p.or_equal(8, "rubeque"), 8
    assert_equal @p.or_equal(false, "rubeque"), "rubeque"
  end

  def test_brackets_and_searches
    assert_equal @p.brackets_and_searches("helloworld", "e"), "e"
    assert_equal @p.brackets_and_searches("what", "e"),  nil
    assert_equal @p.brackets_and_searches("rubeque", "e"), "e"
    assert_equal @p.brackets_and_searches("E", "e"), nil
  end

  def test_alt_arr_notation
    assert_equal @p.alt_arr_notation{%w(hello world)}, ["hello", "world"]
    assert_equal @p.alt_arr_notation{%w{1 2 3 4}}, ["1", "2", "3", "4"]
    assert_equal @p.alt_arr_notation{%w?remembrance of things past?}, ["remembrance", "of", "things", "past"]
  end

  def test_set_intersection
    assert_equal @p.set_intersection([ 1, 1, 3, 5 ], [ 1, 2, 3 ]), [ 1, 3 ]
  end

  def test_irish
    assert_equal @p.irish?("Miles O'Brien"), "Irish"
    assert_equal @p.irish?("Barack Obama"), "Not Irish"
  end

  def test_caution_case
    assert_equal @p.caution_case(1), true
    assert_equal @p.caution_case([1, 2]), true
    assert_equal @p.caution_case({1=>2}), true
    assert_equal @p.caution_case((1..2)), false
  end

  def test_random_values
    assert_equal (@p.random_values/1000000.0).round, 13
  end
end
