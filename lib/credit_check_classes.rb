
puts "Enter credit card number:"
user_input = gets.chomp

class LuhnAlgorithm
  def initialize(array)
    @array = array
  end

  def numbered_reversed_array
    @array.reverse.split("")
  end

  def doubled_digits
    numbered_reversed_array.map.with_index do |digit, index|
      if index.odd?
         digit.to_i * 2
      else
        digit.to_i
      end
    end
  end

  def added_if_over_9
    doubled_digits.map do |digit|
      if digit > 9
        digit - 9
      else
        digit
      end
    end
  end

  def add
    sum = added_if_over_9.reduce(:+)
  end

  def validity
    if add % 10 == 0
      puts "valid"
    else
      puts "invalid"
    end
  end

end

puts LuhnAlgorithm.new(user_input).validity
