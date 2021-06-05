# Write a program that solicits 6 numbers from the user, then prints a message that 
# describes whether or not the 6th number appears amongst the first 5 numbers.

def prompt(message)
  puts "==> #{message}"
end

prompt "Enter the 1st number:"
number_1 = gets.chomp.to_i
prompt "Enter the 2nd number:"
number_2 = gets.chomp.to_i
prompt "Enter the 3rd number:"
number_3 = gets.chomp.to_i
prompt "Enter the 4th number:"
number_4 = gets.chomp.to_i
prompt "Enter the 5th number:"
number_5 = gets.chomp.to_i
prompt "Enter the 6th number:"
number_6 = gets.chomp.to_i

num_array = [number_1, number_2, number_3, number_4, number_5]

if num_array.include?(number_6)
  puts "The number #{number_6} appears in #{num_array}."
else
  puts "The number #{number_6} does not appear in #{num_array}."
end

# Examples:

# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].


# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].

# D - input: 6 integers, output: array.

# A - retrieve 6 numbers from user
# =>  combine first 5 into an array
# =>  determine if the 6th number is in that array. 
# =>  output results. 