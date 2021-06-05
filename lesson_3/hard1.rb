#q1

if false
  greeting = "hello world"
end

greeting

#q2

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# => {:a => "hi there"}

#q3

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# "one is :one"
# "two is :two"
# "three is :three"

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# "one is :one"
# "two is :two"
# "three is :three"

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# "one is: two"
# "two is: three"
# "three is: one"

#q4

def dot_separated_ip_address?(input_string)
	dot_separated_words = input_string.split(".")
	while dot_separated_words.size > 0 do
		word = dot_separated_words.pop
		break unless is_an_ip_number?(word)
	end
	return true
end

def dot_separated_ip_address?(input_string)
	dot_separated_words = input_strings.split(".")
	return false unless dot_separated_words.size == 4

	while dot_separated_words.size > 0 do
		word = dot_separated_words.pop
		return false unless is_an_ip_number?(word)
	end

	true
end