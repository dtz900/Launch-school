# Build a program that displays when the user will retire and how many years she has to work
# till retirement


def retire
  puts "What is your age?"
  age = gets.chomp.to_i
  puts "At what age would you like to retire?"
  retire_age = gets.chomp.to_i
  time = Time.new.year
  retire_year = (retire_age - age) + time
  puts "It's #{time}.You will retire in #{retire_year}."
  puts "You only have #{retire_year - time} years of work to go!"
end

puts retire
