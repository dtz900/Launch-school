# Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a seperate line.


value = 1
while value <= 99
  puts value
  value += 2
end

# or

(1..99).to_a.map do |num|
  if num.odd?
    puts num
  else
  end
end

 



