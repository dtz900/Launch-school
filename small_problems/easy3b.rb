# Write a program that prompts the user for two positive integers, and then prints the 
# results of the following operations on those two numbers: addition, subtraction, 
# product, quotient, remainder, and power. Do not worry about the valid input. 


def prompt(message)
  puts "==> #{message}"
end

int_1 = 0
int_2 = 0

prompt "Enter the first number:"
int_1 = gets.chomp.to_i
prompt "Enter the second number:"
int_2 = gets.chomp.to_i

prompt "#{int_1} + #{int_2} = #{int_1 + int_2}"
prompt "#{int_1} - #{int_2} = #{int_1 - int_2}"
prompt "#{int_1} * #{int_2} = #{int_1 * int_2}"
prompt "#{int_1} / #{int_2} = #{int_1 / int_2}"
prompt "#{int_1} % #{int_2} = #{int_1 % int_2}"
prompt "#{int_1} ** #{int_2} = #{int_1 ** int_2}"




# Example
# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103