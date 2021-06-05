#q1

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.key?("Spot")

#q2

munsters_description = "The Munsters are creepy in a good way."
munsters_description.swapcase!
munsters_description.capitalize!
munsters_description.downcase!
munsters_description.upcase!
# => "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# "The munsters are creepy in a good way."
# "the munsters are creepy in a good way."
# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

#q3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)

#q4

advice = "Few things in life are as important as house training your pet dinosaur."
advice.match?("Dino")

#q5

flinstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#q6

flinstones << "Dino"
# or
flinstones.push("Dino")
# or 
flinstones.concat

#q7

flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
other_flinstones = %w(Dino Hoppy)

flinstones.concat(other_flinstones)

#q8

advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(0..36)
# or
advice.slice!(0, advice.index('house'))

#q9

statement = "The Flintstones Rock!"
statement.count('t')

#q10

title = "Flintstones Family Members"
title.center(40)