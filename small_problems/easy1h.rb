# Write a method that takes one arguement, an array containing integers, and returns the average
# of all numbers in the array. The array will never be empty and the numbers will always be 
# positive integers. Your result should also be an integer.

def average(array)
  (array.sum / array.count).to_f
end
# or
def average(array)
  sum = array.reduce { |sum, number| sum + number }
  sum / array.count
end


# P - I need to write a method that returns the average of a given list of numbers. The numbers
#     will always be positive and will never be empty. 

# # examples:
puts average([1, 6]) #== 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) #== 25
puts average([9, 47, 23, 95, 16, 52])#== 40
# => true

# D - Data structures. 
#     input: array of integers, output: integer

# A - first I need to find the sum of the integers in the array
#   - Then divide the return value by the size of the array. 

