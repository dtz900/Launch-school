# loop do
#   puts 'just keep printing...'
#   break
# end


# loop do 
#   puts 'This is the outer loop'
  
#   loop do 
#     puts 'This is the inner loop.'
#     break
#   end
#   break
# end

# puts 'This is outside all loops.'


# iterations = 1

# loop do 
#   puts "Number of iterations = #{iterations}"
#   iterations += 1
#   break if iterations > 5
# end


# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
#   break if answer == 'yes'
#   puts 'Incorrect answer. Please answer "yes".'
# end


# say_hello = true
# count = 0

# while say_hello
#   puts 'Hello!'
#   count += 1 
#   say_hello = false if count == 5
# end


# numbers = [] 

# while numbers.size < 5
#   numbers << rand(100)
# end

# puts numbers


# count = 1

# until count == 11
#   puts count
#   count += 1
# end


# numbers = [7, 9, 13, 25, 18]

# until numbers.size == 0
#   puts numbers.shift
# end


# for i in 1..100
#   puts i if i.odd?
# end


# friends = ['Sarah', 'John', 'Hannah', 'Dave']

# for friend in friends 
#   puts "Hello, #{friend}!"
# end


# count = 1

# loop do 
#   if count.even?
#     puts "#{count} is even!"
#   else
#     puts "#{count} is odd!"
#   end
  
#   break if count == 5
#   count += 1
# end


# loop do
#   number = rand(100)
#   puts number
#   break if number <= 10
# end


# process_the_loop = [true, false].sample

# puts process_the_loop == true ? "The loop was processed!" : "The loop was not processed!"

# # or

# if process_the_loop
#   loop do
#     puts "The loop was processed!"
#     break
#   end
# else
#   puts "The loop was not processed!"
# end


# loop do
#   puts 'What does 2 + 2 equal?'
#   answer = gets.chomp.to_i
#   if answer == 4
#     puts "That's correct!"
#     break
#   else
#     puts "That's wrong. Please try again."
#   end
# end


# numbers = []

# loop do 
#   puts 'Enter any number:'
#   input = gets.chomp.to_i
#   numbers.push(input)
#   break if numbers.size == 5
# end
# puts numbers


# names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   puts names.shift 
#   break if names.size == 0
# end

# puts names


# 5.times do |index|
#   puts index
#   break if index == 2
# end

# number = 0

# until number == 10
#   number += 1
#   next if number.odd?
#   puts number
# end


# number_a = 0
# number_b = 0

# loop do
#   number_a += rand(2)
#   number_b += rand(2)
#   next unless number_a == 5 || number_b == 5
#   puts "5 was reached!"
#   break 
# end


def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end 
