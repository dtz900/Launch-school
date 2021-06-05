def repeat(str, int)
  int.times do
    puts str
  end
end

# input: string and positive integer
# output: same string repeated the amount of the integer

# P - Understanding the problem
# given a string and a positive integer I must return the string amount of times represented by the integer.

# E - Examples and test cases
 repeat('Hello', 3)
# => Hello
# => Hello
# => Hello

# D - Data structures: list of strings
# String
# String
# String
# ...

# A - Algorithm 
# 1. Create an empty string
# 2. list input string in the empty string
# 3. repeat until size of integer is met
# 4. return strings


