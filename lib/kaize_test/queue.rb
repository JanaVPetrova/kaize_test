class Queue
  @arr = Array.new

  def initialize(arr)
    @arr = arr
  end

  def pop(n = 1)
    if n == 1
      @arr.delete_at 0
    else
      res = Array.new
      n.times do
        res << @arr[0]
        @arr.delete_at 0
      end
      res
    end
  end

  def push(to_be_pushed)
    @arr.push(to_be_pushed)
    @arr.flatten! if to_be_pushed.is_a? Array
    @arr
  end

  def to_a
    @arr
  end
end
