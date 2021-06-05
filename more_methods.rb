[1, 2, 3].any? do |num|
  num > 2
end

# => true
# => There are two return values we need to be aware of here. The return value of the block 
# => and the return value of the method. any? looks at the truthiness of the block's return 
# => value in order to determine waht the method's return value will be. if the block returns
# => a "truthy" value for any element in the collection, then the method will return true. 

{ a: "ant", b: "bear", c: "cat" }.any? do |key, value|
  value.size > 4
end

# => false
# => The above code returns a boolean, signifying whether any value in the hash is greater than 4.

[1, 2, 3].all? do |num|
  num > 2
end

# => false
# => all? is similar to any? it also looks at the truthiness of the block's return value, but the 
# => method only returns true if the block's return value in EVERY iteration is truthy.

# all? can also be called on a hash:
{ a: "ant", b: "bear", c: "cat" }.all? do |key, value|
  value.length >= 3
end

# => true

[1, 2, 3].each_with_index do |num, index|
  puts "The index of #{num} is #{index}."
end

# => The index of 1 is 0.
# => The index of 2 is 1.
# => The index of 3 is 2.
# => [1, 2, 3]
# => each_with_index is nearly identical to each. While both methods take a block and execute the code 
# => within the block, the block's retrun value is ignored. However, each_with_index takes a second
# => argument which represents the index of each element.

{ a: "ant", b: "bear", c: "cat" }.each_with_index do |pair, index|
  puts "The index of #{pair} is #{index}."
end

# The index of [:a, "ant"] is 0.
# The index of [:b, "bear"] is 1.
# The index of [:c, "cat"] is 2.
# => { :a => "ant", :b => "bear", :c => "cat" }
# => this is what calling each_with_index on a hash looks like. The first argument now represents an
# => array containing both the key and the value.

# Finally note that each and each_with_index both always return the original calling collection. 

[1, 2, 3].each_with_object([]) do |num, array|
  array << num if num.odd?
end

# => [1, 3]
# => each_with_oject takes a method argument instead of a block like the methods above. The method 
# => argument is a collection object that will be returned by the method. On top of that, the block
# => takes 2 arguments of its own. The first block argument represents the current element and the 
# => second block argument represents the collection object that was passed in as an argument to 
# => the method. Once its done iterating, the method returns the collection object that was passed in.

# => in the above example the array is initialized to an empty array, []. Inside the block we can now
# => manipulate the array.

{ a: "ant", b: "bear", c: "cat" }.each_with_object([]) do |pair, array|
  array << pair.last
end
# => ["ant", "bear", "cat"]

# => Similar to each_with_index the first block argument turns into an array when we invoke each_with_object
# => on a hash.

[1, 2, 3].first

# => 1
# => first doesn't take a block, and it has an optional argument. if none provided it returns only the first

{ a: "ant", b: "bear", c: "cat" }.first(2)
# => [[:a, "ant"], [:b, "bear"]]

# => in practice first is rarely called on a hash. Also not that when called on hash the return is a 
# => nested array.

[1, 2, 3].include?(1)
# => true

# => include? doesn't take a block but it requires one argument. it returns true if the argument exists
# => in the array and false if it doesn't.

# When called on a hash include? only checks the keys, not the values. 

{ a: "ant", b: "bear", c: "cat" }.include?("ant")
# => false

{ a: "ant", b: "bear", c: "cat" }.include?(:a)
# => true

# Hash#include? is an alias for Hash#key? or Hash#has_key?.

# Partition divides up elements in the current collection into two collections, depending on the 
# blocks return value.

[1, 2, 3].partition do |num|
  num.odd?
end
# => [[1, 3], [2]]

# The most idiomatic way to use partition is to parallel assign variables to capture divided inner arrays
odd, even = [1, 2, 3].partition do |num|
  num.odd?
end

odd  # => [1, 3]
even # => [2]

# the return value of partition will always be an array
long, short = { a: "ant", b: "bear", c: "cat" }.partition do |key, value|
  value.size > 3
end
# => [[[:b, "bear"]], [[:a, "ant"], [:c, "cat"]]]

# We can transform these back into hashes like so:

long.to_h # => { :b => "bear" }
short.to_h  # => { :a => "ant", :c => "cat" }