
# 1. Readability
# 2. Logic (redudancy and syntax)




def leftover_ingredient_calc(desired_item, available_ingredients)
  # What is the relationship between the food and the number?
  ingredients_needed = {"cookie" => 1, "cake" =>  5, "pie" => 7}


  raise ArgumentError.new("#{desired_item} is not on the menu") unless ingredients_needed.include?(desired_item)

  #   A raise will stop the rest of the code form running.
  # Therefore, anything that comes after our single line raise.
  # can be considered an "ELSE" block.

  # This is called a "validation"


#   hash.include?
#   hash.keys.include?
#   hash.has_key?
#   hash.value.include?
#   hahs.has_value?


  #   hash.keys.sort {|key| key < following_key}


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
# p serving_size_calc("THIS IS AN ERROR", 5)