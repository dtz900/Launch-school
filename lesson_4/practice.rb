# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# flintstones_hash = {}
# flintstones.each_with_index do |name, index|
#   flintstones_hash[name] = index
# end

# puts flintstones_hash

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# puts ages.values.sum

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# ages.reject do |key, value|
#   value > 100 
# end

# # or 

# ages.keep_if { |_, age| age < 100 }

# puts ages

# puts ages.values.min

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# # puts flintstones.index { |name| name[0, 2] == "Be" }

# flintstones.map! do |name|
#   name[0, 3]
# end
# # or 
# flintstones.map! { |name| name[0,3] }

# puts flintstones

statement = "The Flintstones Rock"

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end
