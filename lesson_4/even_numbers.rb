def sum_even_number_row(row_number)
  rows = []
  start_integer = 2
  (1..row_number).each do |current_row_number|
    rows << create_row(start_integer, current_row_number)
    start_integer = rows.last.last + 2  
  end
  rows.last.sum
end

def create_row(start_integer, row_length)
  row = []
  current_integer = start_integer
  loop do
    row << current_integer
    current_integer += 2
    break if row.length == row_length
  end
  row
end

# row number: 1 —> sum of integers in row: 2
# row number: 2 —> sum of integers in row: 10
# row number: 4 —> sum of integers in row: 68

p sum_even_number_row(1) == 2 # true
p sum_even_number_row(2) == 10
p sum_even_number_row(4) == 68


# start: 2, length: 1 --> [2]
# start: 4, length: 2 --> [4, 6]
# start: 8, lenght: 3 --> [8, 10, 12]

p create_row(2, 1) == [2]
p create_row(4, 2) == [4, 6]
p create_row(8, 3) == [8, 10, 12]

# Create_row algorithm:
# 1. create an empty 'row' array to contain the integers
# 2. add the starting integer 
# 3. increment starting integer by 2 to get the next integer in the sequence
# 4. repeat steps 2 & 3 until the array has reached the correct length
# 5. return the 'row' array

# Start the loop
#  - Add the start integer to the row
#  - Increment the start integer by 2
#  - Break out the loop if length of row equals row_length

# Sum_even_number_row algorithm
# 1. Create an empty 'rows' array to contain all of the rows
# 2. Create a 'row' array and add it to the overall 'rows' array
# 3. Repeat step 2 until all the necessary rows have been created
#     1. All rows have been created when the length of the 'rows' array is equal to the input integer
# 4. Sum the final row
# 5. Return the sum of the final row

# [
#   [2],
#   [4, 6],
#   [8, 10, 12],
#   [14, 16, 18, 20],
#   ....
# ]

# Calculating the start integer: 
# Rule: First integer of row == last integer of preceding row + 2
# Algorithm:
#   - Get the last row of the rows array
#   - get last integer of that row
#   - add 2 to the integer