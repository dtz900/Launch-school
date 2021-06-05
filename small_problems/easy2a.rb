# Build a program that randomly generates and prints Teddy's age. To get the age, you should
# generate a random number between 20 and 200. 

puts "What is your name?"
answer = gets.chomp.downcase

number = rand(20..200)
loop do
  if answer == ''
    puts "Teddy is #{number} years old!"
  else
    puts "#{answer} is #{number} years old!"
  end
  break
end

