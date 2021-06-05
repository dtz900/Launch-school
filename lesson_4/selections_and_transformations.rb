
produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'brocoli' => 'Vegetable',
}

# def select_fruit(produce_list)
#   produce_keys = produce_list.keys
#   counter = 0
#   selected_fruits = {}

#   loop do
#     # this has to be at the top in case produce_list is empty hash
#     break if counter == produce_keys.size

#     current_key = produce_keys[counter]
#     current_value = produce_list[current_key]

#     if current_value == 'Fruit'
#       selected_fruits[current_key] = current_value
#     end

#     counter += 1
#   end

#   selected_fruits
# end


# numbers = [1, 4, 3, 7, 2, 6]

# def double_numbers!(numbers)
#   counter = 0
  
#   loop do 
#     break if counter == numbers.size
    
#     current_number = numbers[counter]
#     numbers[counter] = current_number * 2
    
#     counter += 1
#   end
  
#   numbers
# end

# double_numbers!(numbers)
# puts numbers

# def double_odd_numbers(numbers)
#   doubled_numbers = []
#   counter = 0
  
#   loop do
#     break if counter == numbers.size
    
#     current_number = numbers[counter]
#     current_number *= 2 if counter.odd?
#     doubled_numbers << current_number
    
#     counter += 1
#   end
  
#   doubled_numbers
# end

# puts double_odd_numbers(numbers)

# def general_select(produce_list, selection_criteria)
#   produce_keys = produce_list.keys
#   counter = 0
#   selected_produce = {}
  
#   loop do
#     break if counter == produce_keys.size
    
#     current_key = produce_keys[counter]
#     current_value = produce_list[current_key]
    
#     # used to be current_value == 'Fruit'
#     if current_value == selection_criteria
#       selected_produce[current_key] = current_value
#     end
    
#     counter += 1
#   end
  
#   selected_produce
# end

# puts general_select(produce, 'Fruit')
# puts general_select(produce, 'Vegetable')
# puts general_select(produce, 'Meat')


# my_numbers = [3, 5, 6, 7, 9]

# def multiply(numbers, constant)
#   multiplied_numbers = []
#   counter = 0
  
#   loop do
#     break if counter == numbers.size
    
#     multiplied_numbers << numbers[counter] * constant
    
#     counter += 1
#   end
  
#   multiplied_numbers
# end

# puts multiply(my_numbers, 3)


def select_letter(sentence, character)
  selected_chars = ''
  counter = 0 
  
  loop do
    break if counter == sentence.size
    current_char = sentence[counter]
    
    if current_char == character
      selected_chars << current_char
    end
    
    counter += 1
  end
  
  selected_chars
end

question = 'How many times does a particular character appear in this sentence?'
puts select_letter(question, 'a').size  # => "aaaaaaaa"
puts select_letter(question, 't') # => "ttttt"
puts select_letter(question, 'z') # => ""
