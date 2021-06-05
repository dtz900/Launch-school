# q1

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

#q3

advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!("important", "urgent")

#q4

numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1)
numbers.delete(1)

#q5

(10..100).cover?(42)

#q6

famous_words = "seven years ago..."

"Four score and " + famous_words
# or
famous_words.prepend("Four score and ")
# or
"Four score and " << famous_words

#q7

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

flintstones.flatten!
# => ["Fred", "Wilma", "Barney", "Betty", "BamBam", "Pebbles"]

#q8

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones.assoc("Barney")
