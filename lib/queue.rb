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
    if to_be_pushed.kind_of?(Array)
      to_be_pushed.each { |x| @arr << x }
      true
    elsif @arr << to_be_pushed
      true
    else
      false
    end
  end

  def to_a
    @arr
  end
end
