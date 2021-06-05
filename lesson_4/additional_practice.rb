# Given the array below 
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# Turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end
# Remember to initialize empty hash.



# Add up all the ages from the Munster family hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.values.sum
# or
ages.values.inject(:+)
# or
total_ages = 0
ages.each { |_, age| total_ages += age }
total_ages # => 6174



# Remove people with age 100 and greater.
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.keep_if do |key, value|
  value < 100
end
# simpler
ages.keep_if { |_, age| age < 100 }
# or 
ages.reject do |key, value|
  value >= 100
end



# Pick out the minimum age of from our current munster family hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.values.min 



# Find the index of the first name that starts with "Be"
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.bsearch_index { |name| name.start_with? "Be" }
# or 
flintstones.index { |name| name[0, 2] == "Be" }



# Amend this array so that the names are all shortened to just the first three characters:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles) 

flintstones.map! do |name|
  name[0, 3]
end
# simple
flintstones.map! { |name| name[0, 3] }



# Create a hash that expresses the frequency with which each letter occurs in this string:
statement = "The Flintstones Rock"

# Example
# => { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

# => Create empty result hash
# => build an array containing all of the letters in alphabet lower and upper case
# => iterate over each letter with the scan method.
# => if letter frequency is greater than 0 include it in hash. 



# What happens when we modify an array while iterating over it? What would be output by this code?
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# => [1, 3]
# => I believe the shift method removes the first element so as it loops thru the first element 
# => gets removed twices as there are only 4 elements.

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# => [1, 2]

# demonstration:
numbers = [1, 2, 3, 4]
numbers.each_with_index do |number, index|
  p "#{index} #{numbers.inspect} #{number}"
  numbers.shift(1)
end
# => "0 [1, 2, 3, 4] 1"
# => "1 [2, 3, 4] 3"

# => From this we see that our array is being changed and shortened as we go (shortened and shifted)
# => and the loop counter used by #each is compared against the current length of the array
# => rather than its original length.



# On ruby on rails you can use the method called "titleize" converting
words = "the flintstones rock"
# to
# words = "The Flintstones Rock"
# Write your own version of titleize.

words.split.map { |word| word.capitalize! }.join(' ')



munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Modify the hash such that each member of the munster family has an additional "age_group" key
# that has one of three values describing the age group the family memeber is in (kid, adult, senior)
# Your solution should produce this:

# { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

# note ranges are 0-17 kid, 18-64 adult, 65+ senior.

# my attempt:
new_hash = {}
new_key_value = case category
                when munsters.key.rassoc("age") == (0..17)
                  new_hash["kid"]
                when munsters.key.rassoc("age") == (18..64)
                  new_hash["adult"]
                when munsters.key.rassoc("age") == (65..1000)
                  new_hash["senior"]
                end


# correct answer:

munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end
