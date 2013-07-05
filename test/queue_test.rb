class QueueTest < Minitest::Test
  def setup
    @queue = Queue.new([5, 6, 7, 8])
  end

  def test_pop
    assert_equal @queue.pop, 5
    assert_equal @queue.pop(2), [6, 7]
  end

  def test_push
    assert_equal @queue.push(9), true
    assert_equal @queue.push([4, 2]), true
  end

  def test_to_a
    assert_equal @queue.to_a, [5, 6, 7, 8]
  end
end
