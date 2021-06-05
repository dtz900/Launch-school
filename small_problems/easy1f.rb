# Write a method that takes one argument, a string containing one or more words, and retruns the given
# string with words that contain five or more characters reversed. Each string will consist of only
# letters and spaces. Spaces should be included only when more than one word is present.

def reverse_words(string)
  words = []
  
  string.split.each do |word| 
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

# When given a string or an array, and asked to evaluate each character or element, your first instinct
# should be to reach for an iterator. Our goal here is to iterate over the given string and check each
# word for the number of characters it contains. If it has five or more characters then we'll reverse
# the word. 

# At the top of our method, we create an empty array named words that will hold each modified word of the 
# result: these words will be reversed if long, or as is if they are short. We use #each to iterate over
# the string, but first we need to seperate each word in string using #split, which returns an array
# containing the seperate words. For each word, we count the number of characters it contains using 
# #size. if it contains five or more characters, we use the destructive method #reverse! to reverse the 
# word. We mutate word so that we can add it to word by invoking words << word.

# After iterating over string and evaluating each word, words will contain all of the words, with longer 
# words reversed. Finally, we can invoke words.join(' ') to return the desired string.