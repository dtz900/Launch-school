# Write a program that will ask a user for an input of a word or multiple words and give back
# the number of characters. Spaces should not be counted as a character.

# I want to split the string and then join them in order to remove the spaces.
# then call string#lenght to get the amount of characters. 

puts "==> Please write a word or multiple words:"
words = gets.chomp

puts "==> There are #{words.split.join.length} characters in '#{words}.'"


