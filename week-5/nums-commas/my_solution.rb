
# Numbers to Commas Solo Challenge

# I spent [4.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode
=begin
 1. take an int and change it to a string
 2. divide the string by every 3 places starting from its end. if necessary, we can reverse the string.
 3. add a comma between every two spaces.
=end

# What is the input?
#an int
# What is the output? (i.e. What should the code return?)
#a string of a number that's separated by commas every three digits
# What are the steps needed to solve the problem?
# 1. convert to string. 2. reverse the order. 3. insert commas every three digits. 4. reverse it back. 5. return it.


# 1. Initial Solution

=begin
def separate_comma(number)
  if (number.is_a? Integer) == true
    puts "num is int"
    num_str = number.to_s
    puts num_str
    str_length = num_str.length
    num_commas = str_length/3
    if (num_commas >= 1) && str_length > 3
      puts "num greater than 1000"
      num_str.reverse!
      for i in 1..num_commas
        num_str.insert (4*i-1), ","
        puts num_str
      end
      puts num_str
      num_str.chomp!(",")
      num_str.reverse!
      puts num_str
      return num_str
    else
      return num_str
      puts num_str
    end
    else
    puts "not an int"
  end
end
=end

# 2. Refactored Solution

def separate_comma(number)
  if (number.is_a? Integer) == true
    num_str = number.to_s
    str_length = num_str.length
    num_commas = str_length/3
    if (num_commas >= 1) && (str_length > 3)
      num_str.reverse!
      for i in 1..num_commas
        num_str.insert (4*i-1), ","
      end
      num_str.chomp!(",")
      num_str.reverse!
      return num_str
    else
      return num_str
    end
  end
end

# 3. Reflection

=begin
-What was your process for breaking the problem down? What different approaches did you consider?

When I started out, I thought about how I was going to insert commas, which would be through iterating every 4 characters, and then I realized I'd have to reverse the number so the commas would appear as they usually do ('1,000' and not '100,0'). As I was working on the problem,  I realized first I had to figure out how to even find out if I had to insert commas.
-Was your pseudocode effective in helping you build a successful initial solution?

Yes, very much so. I had basically followed it and it helped me look up the 'insert' method, which was what I needed. Also I realized I hadn't included how to find the numbers to alter in my pseudocode, which also posed the question of what happens when I add an unnecessary comma. Luckily I had already known about chomp from a previous challenge. Otherwise I could've looked up the first character of the string and checked if it was a ','.
-What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
When refactoring, I just took out all the unnecessary additions I added to test the code, like the 'puts' statements I used to check values and to check the code was working. I also tried to take out any redundancies and focus on cleaning it up to help with readability. Nothing I did significantly changed how the code worked.

-How did you initially iterate through the data structure?
  I used a for loop, with the limit defined as the number of commas I would need.
-Do you feel your refactored solution is more readable than your initial solution? Why?
Yes, as I stated I added a lot of 'puts' statements just for testing, and they definitely cluttered things up. Other than that, I usually try to keep my code readable as I go, adding parentheses and whatnot to make things more clearly delineated, and making sure all the indentations are fine. I also considered variable names and wanted to make sure they were easy to understand.

=end