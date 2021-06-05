# Print all even numbers 1 to 99, inclusive, to the console, with each number on seperate line. 

(1..99).to_a.map do |num|
  if num.even?
    puts num
  else
  end
end

# or

value = 2 
while value <= 99
  puts value
  value += 2
end

