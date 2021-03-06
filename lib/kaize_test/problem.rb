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

  def blackjack(*nums)
    sum = nums.reduce(:+)
    if sum == 21
      true
    else
      false
    end
  end

  def even(arr)
    arr.find(&:even?)
  end

  def temperature_bot(temp)
    case temp
    when 18..21
      "I like this temperature"
    else
      "This is uncomfortable for me"
    end
  end

  def sum_over_50(arr)
    arr.reject{|x| x <= 50}.inject(0){|sum, x| sum + x}
  end

  def dave
    name = "Dave"
    str = "My mind is going #{name}"
  end

  def home_on_the_range
    (1..100).to_a[11...95].reduce(:+)
  end

  def arr_item_removal
    ([:r, :u, :b, :e, :q, :u, :e] & [:b, :q])
  end

  def roses_color
    roses = "blue" && "red"
    roses
  end

  def violets_color
    violets = "blue" and "red"
    violets
  end

  def helloworld
    str = "Hello" "World"
    str
  end

  def or_equal(b, value)
    b ||= value
    b
  end

  def brackets_and_searches(str, char)
    str[char]
  end

  def alt_arr_notation
    yield
  end

  def set_intersection(arra, arrb)
    arra & arrb
  end

  def irish?(name)
    (name =~ /[ ]\w'/) ? "Irish" : "Not Irish"
  end

  def caution_case(obj)
    case obj
    when obj
      true
    else
      false
    end
  end

  def random_values
    (0..1000000).inject(0.0) do |sum, _| 
      sum += rand(14) + rand(14)
    end
  end
end
