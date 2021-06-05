# Write a program that will ask for user's name. The program will then greet the user. If the user 
# writes "name!" then the computer yells back to the user.

puts "What is your name?"
name = gets.chomp 
name_upcase = name.upcase

if name.include? "!" 
  puts "HELLO #{name_upcase}, WHY ARE YOU SCREAMING?!"
else
  puts "Hello #{name}"
end

