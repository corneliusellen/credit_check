card_number = "4024007136512380"

digits = card_number.reverse.split("")

doubled_digits = []
digits.each_with_index do |digit, index|
  if index.odd?
     doubled_digits << digit.to_i * 2
   else
    doubled_digits << digit.to_i
  end
end

new_array = doubled_digits.map do |digit|
if digit > 9
  digit - 9
else
  digit
end
end

total = 0
new_array.each do |digit|
total += digit
end

if total % 10 == 0
  puts "valid"
else
  puts "invalid"
end


# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"
