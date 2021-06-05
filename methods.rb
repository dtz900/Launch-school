# What is the return value of the select method below and why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# => [1, 2, 3] becuase the return value is 'hi' is truthy which forces
#               a return of the original expression. 

# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# => count will count the number of elements for which the block returns a true value. 
# => In this case count would return 2

# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# => reject will return a new array contain that which the block returned false or nil. 
# => so in this example the return would be [1, 2, 3] because puts always returns nil 
# => therefore all elements returned nil so reject created a new array filled with the original array.

# What is the retrun value of each_with_object in the following code? why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# => { "a" => "and", "b" => "bear", "c" => "cat" }
# => Each_with_object will return a new hash consisting of the first letter of each string as the key 
# => and the whole string as the value. It was able to do this becasue it based ({}) as an argument
# => the block specifies how the key value was selected. The vlue being [0] of each string and hash
# => being the key.

# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# => Shift destructively remove the first key/value pair in the hash and places it in a two item array.

# What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size

# => 11
# => Two methods are chained to this array. The first is pop which destructively removes and 
# => returns the last element from the array into a new array. Then the size method counts 
# => the number of characters in that element. 

# What is the block's return value in the following code? How is it determined? Also, what is the 
# return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# => The return value of the block is determined by the return value of the final expression within the
# => block. In this case the last statement evaluated is num.odd?, which returns a boolean. Therefore,
# => the block's return value will be a boolean, since Integer#odd? can only return true or false.
# => Array#any? method returns true if the block ever returns a value that is not false or nil. So becuase
# => any will return true in the first iteration the return value will be 1. There is no need for
# => the block to keep iterating. 

# How does take work? is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# => The take method returns a new array with the elements up to the argument(2)
# => here it will return [1, 2]
# => it is not destruvtive it creates a new array.
# => we can try it out in irb or read the documentation. 

# What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# => the return value of map in this code will be [nil, 'bear']
# => map returns a new array with the results of running the block once for every element in enum
# => not in the documentation: why nil is returned? This is becuase it is a condition of the 
# => if statement, if none of the conditions in an if statement returns true, the if statement itself
# => returns nil.

# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# => the return value is [1, nil, nil]
# => this is because puts always returns nil or false so within an if statement it will always return nil
# => 1 is returned because of the else condition of the if statement it is <= 1 
