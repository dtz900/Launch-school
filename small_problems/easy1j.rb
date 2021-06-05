# Write a method that takes two arguments, a positive integer adn a boolean, and calculate
# the bonus for a given salary. If the boolean is true, the bonus should be half 
# the salary. if its false, the bonus should be 0.

def calculate_bonus(salary, qualify)
  if qualify
    salary / 2
  else
    0
  end
end
# or

def calculate_bonus(salary, qualify)
  qualify ? (salary / 2) : 0
end

# Examples: 
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

# Data - input: integer and boolean, output: integer

# Algorithm 
# => Divide the first argument by 2
# => if second argument is true return that result 
# => if second argument is false return 0
