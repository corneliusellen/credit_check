require 'pry'

puts "Enter credit card number:"

def numbered_reversed_array(array)
  array.reverse.split("")
end

def doubled_digits(array)
  array.map.with_index do |digit, index|
    if index.odd?
       digit.to_i * 2
     else
      digit.to_i
    end
  end
end

def added_if_over_9 (array)
  array.map do |digit|
    if digit > 9
      digit - 9
    else
      digit
    end
  end
end

def add (array)
  total = array.reduce(:+)
end

def validity (sum)
  if sum % 10 == 0
    puts "valid"
  else
    puts "invalid"
  end
end

validity(add(added_if_over_9(doubled_digits(numbered_reversed_array(gets.chomp)))))
binding.pry 
