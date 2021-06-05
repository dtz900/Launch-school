# def is_odd?(number)
#   number = number % 2
#   if number != 0 
#     puts true
#   else
#     puts false
#   end
# end

# refactored

def is_odd?(number)
  number % 2 == 1
end

# P - given a valid integer, determine if the number is odd.
# E - example:
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# D - input: integer, output: boolean 

# A - Algorithm
# 1. divide given number by 2, 
# 2. if remainder is not 0, integer is odd. 
# 3. if integer is odd return true otherwise return false