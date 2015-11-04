# Your Names
# 1) Josh Shin
# 2) Jacob Crofts

# We spent [1] hours on this challenge.


# Importance of refactoring:
# 1. Readability
# 2. Logic (redudancy and syntax)


# Bakery Serving Size portion calculator.

def leftover_ingredient_calc(desired_item, available_ingredients)
  # What is the relationship between the food and the number?
  ingredients_needed = {"cookie" => 1, "cake" =>  5, "pie" => 7}


  raise ArgumentError.new("#{desired_item} is not on the menu") unless ingredients_needed.include?(desired_item)

  #   A raise will stop the rest of the code form running.
  # Therefore, anything that comes after our single line raise.
  # can be considered an "ELSE" block.

  # This is called a "validation"

#   desired_item_ingredients
  desired_item_ingredients = ingredients_needed[desired_item]

  # ingredients_needed.values_at(desired_item)[0]
  #   values_at returns an array or all values for the matching key.
  #   But there can only be one of each key.
  #   Therefore, values_at is returning a single element array
  #   aka the value at the given key.

  leftover_ingredients = available_ingredients % desired_item_ingredients
  #   this is the remainder after dividing the order_qty by the desired_item_ingredients

  case leftover_ingredients
  when 0 # There are no leftover ingredients....
    return "Calculations complete: Make #{available_ingredients/desired_item_ingredients} of #{desired_item}"
  else
    return "Calculations complete: Make #{available_ingredients/desired_item_ingredients} of #{desired_item}, you have #{leftover_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end
#   Tells us what to do with our leftover ingredients

p leftover_ingredient_calc("pie", 7)
p leftover_ingredient_calc("pie", 8)
p leftover_ingredient_calc("cake", 5)
p leftover_ingredient_calc("cake", 7)
p leftover_ingredient_calc("cookie", 1)
p leftover_ingredient_calc("cookie", 10)
p leftover_ingredient_calc("THIS IS AN ERROR", 5)

=begin
- What did you learn about making code readable by working on this challenge?
  I learned the importance of readability. This program was very easy, but because of poorly named variables it took longer to figure out why each step was there and what each step was doing.

- Did you learn any new methods? What did you learn about them?
  I learned about using 'unless' instead of 'if not'. Also, I learned about different methods to return a value from hashes. For example, '.keys.include?' or 'has_key?' to look for specific key values.

- What did you learn about accessing data in hashes?
  A hash is basically a database, so you don't want the programming calling up the database each time it needs a specific value. It'll be faster if it only calls up the database once and you put the value into a variable so afterwards the program can call up that specific variable instead of calling up the database and retrieving the value every time.

- What concepts were solidified when working through this challenge?
  The importance of quickly readable and understandable code. If it takes 30 minutes to understand what's going on in a very very basic program, that's much too long. Easily readable code will help with maintenance of a program.

=end