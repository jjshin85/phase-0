=begin
Worked on with Luis Fernando Plaz

PseudoCode:

input: Strings of items and integers for quantities
output: a list of items and quantities

  First we'll need to create a list by using a hash, and we'll use the item names for the keys and the quanity for the values.

  Second we'll create a method to add items and their quantities to the hash.

  Third we'll create a method to update the quanities of the hash and also to check if the item already exists.

  Fourth we'll create a method to remove the item from the list.

  Fifth we'll create a method that will iterate through the hash to print it.

=end


def create_grocer_hash
  grocer_hash = {}
end

def add_item_hash(hash, item, quantity)
  if hash.has_key?(item)
    hash[item] += quantity
  else
    hash[item] = quantity
  end
end

def update_item_hash(hash, item, quantity)
  if hash.has_key?(item)
    hash[item] = quantity
  end
end

def remove_item_hash(hash, item)
  hash.delete(item) if hash.has_key?(item)
end

def print_hash(hash)
  hash.each do | key, value |
    puts "For item: #{key}, quantity is: #{value}."
  end
end


grocery_list = create_grocer_hash

add_item_hash(grocery_list, "Lemonade", 2)
add_item_hash(grocery_list, "Tomatoes", 3)
add_item_hash(grocery_list, "Onions", 1)
add_item_hash(grocery_list, "Ice Cream", 4)

remove_item_hash(grocery_list, "Lemonade")

update_item_hash(grocery_list, "Ice Cream", 1)

print_hash(grocery_list)

=begin

- What did you learn about pseudocode from working on this challenge?
 It's a good way to outline what you'll be doing for the program
- What are the tradeoffs of using Arrays and Hashes for this challenge?
  Hashes let you keep the values paired together with its key, so it's way easier to modify the value. With arrays you'd have to search for the right value, see if there are any other instances of the value, and it'd take more work updating things if there were duplicates of a grocery item. Also, the easiest way to use an array would be to create a new class type which took grocery item and quantity as properties.
- What does a method return?
  It can return a data object or nil.
- What kind of things can you pass into methods as arguments?
  You can pass in any data objects, or other methods actually, as long as those methods return a data object
- How can you pass information between methods?
  By creating instance variables and havin the methods take them as arguments.
- What concepts were solidified in this challenge, and what concepts are still confusing?
  How hashes work, that the key is basically a pointer for the value. The syntax of how hashes work will take some work for me to get more familiar with it.

=end