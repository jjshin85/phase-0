# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------
# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# line 8
# 3. What is the type of error message?
# SyntaxError
# 4. What additional information does the interpreter provide about this type of error?
# It didnt' expect the '=', it expected it to be the end of input
# 5. Where is the error in the code?
# {Screw you guys " + "I'm going home." = cartmans_phrase}
# 6. Why did the interpreter give you this error?
# Because variables should be on the left side when declared

false

def cartman_hates(thing)
    puts "What's there to hate about #{thing}?"
end


# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#
# 2. What is the line number where the error occurs?
# line 182, the last line of the file
# 3. What is the type of error message?
# SyntaxError, unexpected end-of-input, expecting keyword_end
# 4. What additional information does the interpreter provide about this type of error?
# It was an unexpected end-of-input, and it was expecting keyword_end
# 5. Where is the error in the code?
# The error is in the 'while true' part that was at line 28 in the cartman_hates() method.
# 6. Why did the interpreter give you this error?
# Because it doesn't specify when to stop, the compiler got stuck in the while loop.

# --- error -------------------------------------------------------

south_park = "show"

# 1. What is the line number where the error occurs?
# line 49
# 2. What is the type of error message?
# NameError
# 3. What additional information does the interpreter provide about this type of error?
# It said it was an undefined local variable or method 'south_park'
# 4. Where is the error in the code?
# 'south_park'
# 5. Why did the interpreter give you this error?
# It's an undefined variable

# --- error -------------------------------------------------------

def cartman()
  puts "Hey guys"
end

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
# undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# It said 'main:Object (NoMethodError)'
# 4. Where is the error in the code?
# 'cartman()'
# 5. Why did the interpreter give you this error?
# The method is undefined

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
# Line 85, but the error's based on the method defined at line 81.
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# It says the method takes the wrong number of arguments. It shouldn't take any, but it takes one.
# 4. Where is the error in the code?
# 'cartmans_phrase("I hate Kyle")', specifically there shouldn't be anything inside the parenteses.
# 5. Why did the interpreter give you this error?
# It wasn't expecting any input for the arguments, but it received "I hate Kyle" as an argument.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("<<expletive>>, <<explective>>!!")

# 1. What is the line number where the error occurs?
# It occurs on line 104, based on the method definition on line 100.
# 2. What is the type of error message?
# It's an argument error
# 3. What additional information does the interpreter provide about this type of error?
# It's the wrong number of arguments. It didn't receive any when it was expecting one.
# 4. Where is the error in the code?
# 'cartman_says'. There should be a string argument after 'cartman_says'
# 5. Why did the interpreter give you this error?
# The method was defined as taking an argument and we didn't give it any.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', "Kyle")

# 1. What is the line number where the error occurs?
# Line 121 and line 125.
# 2. What is the type of error message?
# It's an argument error
# 3. What additional information does the interpreter provide about this type of error?
# It received the wrong number of arguments, it received 1 instead of 2.
# 4. Where is the error in the code?
# "cartman_lie('A meteor the size of the earth is about to hit Wyoming!')".
# 5. Why did the interpreter give you this error?
# It should give a name after the sentence in parentheses because it was expecting a name as another argument.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# Line 140
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
#  It said 'String can't be coerced into Fixnum (TypeError)''
# 4. Where is the error in the code?
# '5 * "Repsect my authoritay!"'
# 5. Why did the interpreter give you this error?
# Because the '5' is on the left and because of order of operations, the compiler thinks you're trying to multiply the number five by a group of words. If you change the order of the string and int, it simply repeats the string the specified number of times.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/0.0000001


# 1. What is the line number where the error occurs?
# 155
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# It says 'divided by 0', meaning we tried to divide a number by 0.
# 4. Where is the error in the code?
# '20/0'
# 5. Why did the interpreter give you this error?
# It's impossible to divide a number by 0.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# Line 171
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# It can't locate such a file
# 4. Where is the error in the code?
# "cartmans_essay.md"
# 5. Why did the interpreter give you this error?
# It's looking for a file that doesn't exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin

  - Which error was the most difficult to read?
  For me, the while loop was the trickiest. It was very easy to miss the first time, and it tricked the compiler into thinking the error was from not adding an 'end' at the end of the file.

- How did you figure out what the issue with the error was?
  At first I just zoned out and added an 'end' to the bottom of the file, and then the file compiled with no errors, which was obviously wrong. Once I actually looked at the section of code where the error was supposed to be, I realized it was from the while loop and the problem was that the compiler didn't know when to stop because there was never a 'break' declaration.

- Were you able to determine why each error message happened based on the code?
  Yes, I didn't think the errors were that difficult. Granted, I say this after I absent-mindedly missed the second error I was supposed to find and took longer than I should've to figure out what was wrong.

- When you encounter errors in your future code, what process will you follow to help you debug?
  I'm going to look at the error messages. Also, while I code, I like adding 'puts' statements to print out the return values to the terminal to check to make sure the code is doing what I want.

=end