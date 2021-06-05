# Write a program that asks the user to enter an integer greater than 0, then asks if the 
# user wants to determine the sum or the product of all numbers between 1 and the entered integer.


# retrieve integer from user
# convert integer to array of integers from 1 to entered integer
# create method to find the sum of all integers in array
# create method to find the product of all integers in array



def prompt(message)
  puts "=> #{message}"
end

def sum(number)
  (1..number).reduce(:+)
end
  
def product(number)
  (1..number).inject(1, :*)
end

number = 0

prompt "Please enter an integer greater than 0."
loop do
  number = gets.chomp.to_i
  if number.bit_length == 0 || number.to_i() < 0
    prompt "Please enter a valid positive integer."
  else
    break
  end
end

operation = ''
prompt "If you would like to calculate the sum enter: 's'."
prompt "If you would like to calculate the product enter: 'p'."
loop do 
  operation = gets.chomp.downcase
  break if operation == 's' || operation == 'p'
  prompt "Please enter a valid operation. ( s / p )"
end
 
if operation == 's'
  total_sum = sum(number)
  prompt "The sum of the integers between 1 and #{number} is #{total_sum}."
else
  total_product = product(number)
  prompt "The product of the integers between 1 and #{number} is #{total_product}"
end





  
