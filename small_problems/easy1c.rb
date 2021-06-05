# brute force:

# def digit_list(number)
#   digits = []
#   loop do
#     number, remainder = number.divmod(10)
#     digits.unshift(remainder)
#     break if number == 0
#   end
#   digits
# end

# idiomatic Ruby:

def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

# P - Given a positive integer return an array of all digits listed.

# E - Examples
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

# D - input: positive integer, output: Array of integers

# A - Algorithm
# 1. create empty array
# 2. divide argument by 10 
# 3. send remainder to new array
# 4. repeat until remainder is 0
# 3. return new array


