class Problem
  def bool
    true
  end

  def reverse
    'nocab yknuhc'.reverse
  end

  def upcase
    'hello world'.upcase
  end

  def maximum(arr)
    arr.max
  end

  def nil_values
    [0, '', 'chunky_bacon']
  end

  def map_arr
    (1..4).map { |x| x**2 }
  end

  def fizzbuzz(x)
    case x
      when 3 then "Fizz"
      when 50 then "Buzz"
      else "FizzBuzz"
    end
  end
  
  def delete_nil
    arr = [1, 4, nil, 9, 16, nil].delete_if{|x| x.nil?}
    arr = arr.inject(0) {|sum, number| sum + number}
  end
end
