# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

def reverse_sentence(string)
  string.split.reverse.join(' ')
end



# P - I need to build a method that takes a string and returns the words in reverse order. 
        # case sensitve, an empty string returns an empty string. 

# E - Examples:
puts reverse_sentence('') == '' # => true
puts reverse_sentence('Hello World') == 'World Hello' # => true
puts reverse_sentence('Reverse these words') == 'words these Reverse' # => true

# D - Data structures
#     input: string. output: string

# A - Algorithm
#     - create empty string
#     - create empty array
#     - split string into new array 
#     - reverse order of index of array
#     - join array into empty string