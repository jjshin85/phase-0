# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Alan Alcesto].

# 0. total Pseudocode
# make sure all pseudocode is commented out!
# Take individual elements of an array and then add them
# Input:
# Output:
# Steps to solve the problem.


# 1. total initial solution
=begin
def total(array)
  if array.size !=0
    total_num = 0
    for n in 0...array.size
      value = array[n]
      total_num += value
    end
    return total_num
  end
end
=end

# 3. total refactored solution
def total(array)
  if array.size !=0
    total_num = 0
    for n in 0...array.size
      value = array[n]
      total_num += value
    end
    return total_num
  end
end


# 4. sentence_maker pseudocode
# Step 1: Method should concatenate elements of String array.
# Step 2: After we can concatenate, we refactor code so we concatenate with additional spaces between the words
# Step 3: Once the words are added together to create the final string, take out the last space and replace it with a period.

# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution
=begin
  def sentence_maker(words)
    if words.size != 0
      sentence = ""
      for w in 0...words.size
        word = words[w]
        if (word.is_a? String)
          sentence += word + " "
        else
          sentence += word.to_s + " "
        end
      end
      sentence.chomp!(" ")
      sentence += "."
      sentence.downcase!
      sentence.capitalize!
      puts sentence
      return sentence
    end
  end
=end

# 6. sentence_maker refactored solution

def sentence_maker(words)
  if words.size != 0
    sentence = ""
    for w in 0...words.size
      word = words[w]
      if (word.is_a? String)
        sentence += word + " "
      else
        sentence += word.to_s + " "
      end
    end
    sentence.chomp!(" ")
    sentence += "."
    sentence.downcase!
    sentence.capitalize!
    return sentence
  end
end
