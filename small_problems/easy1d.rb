vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]



def count_occurrences(array)
  occurences = {}
  
  array.uniq.each do |element|
    occurences[element] = array.count(element)
  end
    
  occurences.each do |element, count|
    puts "#{element} => #{count}"
  end
end
count_occurrences(vehicles)




# P - I need to write a method that iterates over the vehicles array. It selects how many of each 
#     vehicle type there is. Outputs the integer representing the amount of each vehicle type.

# E - Examples/test cases
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# D - input array. output integer

# A - create empty array for vehicle type.
#   - create counter to stop iterating once the array is empty.
#   - select common vehicle types and push them to new array.
#   - repeat until original array is empty.
#   - once new arrays are made use count? method to get the amount of elements in each array. 
