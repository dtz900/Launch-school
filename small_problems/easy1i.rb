# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

def sum(number)
  number.digits.sum
end
# or
def sum(number)
  sum = 0
  str_digits = number.to_s.chars
  
  str_digits.each do |str_digit|
    sum += str_digit.to_i
  end
  
  sum
end
# or 
def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end



# Examples -
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45