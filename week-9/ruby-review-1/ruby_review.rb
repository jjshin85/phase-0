# Numbers to English Words

# I worked on this challenge [with: Luis Fernando Plaz].
# This challenge took me [.5] hours.


# Pseudocode
# Step 1: Create a hash with the written version of numbers from 1-19, and then for 20, 30, 40, etc. until 100. The keys for the hash will be the numerical number, the values of the hash will be the written number.
# Step 2: create a method that takes an integer as input and converts it into a string.
# Step 3: if the number from step 2 is 100, then return "one hundred". If the number is less than 20, enter that number as the key for the hash to find return its value.
# Step 4: If the number is 20 or greater, take it's first index element and add a zero at the end and find its value in the hash. Then, take its second index element and find the corresponding value from the hash. Combine these numbers to get the written representation of the number.


# Initial Solution
=begin

rescue
@in_word = {0 => "", 1 => 'one',2 => 'two',3 => 'three',4 => "four",5 => "five",
  6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten",
  11 => "eleven", 12 => "twelve",13 => "thirteen",14 => "fourteen",15 => "fifteen",
  16 => "sixteen", 17=> "seventeen", 18 => "eighteen", 19 => "nineteen", 20 => "twenty",
  30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy",
  80 => "eighty", 90 => "ninety"}

def in_words(number)
  if number == 100
    return "one hundred"
  elsif number < 20
    return @in_word[number]
  elsif number >= 20
    num_1 = (number.to_s[0] + '0').to_i
    num_2 = number.to_s[1].to_i
    if num_2 == 0
      final_word = @in_word[num_1]
    else
      final_word = @in_word[num_1] + "-" + @in_word[num_2]
    end
  end
end

p in_words(67)
p in_words(50)
p in_words(77)
=end



# Refactored Solution


@numbers_words = {0 => "", 1 => 'one',2 => 'two',3 => 'three',4 => "four",5 => "five",
  6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten",
  11 => "eleven", 12 => "twelve",13 => "thirteen",14 => "fourteen",15 => "fifteen",
  16 => "sixteen", 17=> "seventeen", 18 => "eighteen", 19 => "nineteen", 20 => "twenty",
  30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy",
  80 => "eighty", 90 => "ninety"}

def in_words(number)
  if number == 100
    return "one hundred"
  elsif number < 20
    return @numbers_words[number]
  elsif number >= 20
    num_1 = (number.to_s[0] + '0').to_i
    num_2 = number.to_s[1].to_i
    if num_2 == 0
      final_word = @numbers_words[num_1]
    else
      final_word = @numbers_words[num_1] + "-" + @numbers_words[num_2]
    end
  end
end

# Reflection

=begin

- What concepts did you review in this challenge?
 I reviewed hashes and data types: converting strings to integers and vice versa and accessing hash values.
- What is still confusing to you about Ruby?
  So far just some syntactical stuff, but I believe my knowledge of this will become better with practice.
- What are you going to study to get more prepared for Phase 1?
  The different methods for manipulating arrays and hashes.
=end

# link to ruby_review_2: https://github.com/jjshin85/phase-0/blob/master/week-9/ruby-review-2/ruby-review.rb