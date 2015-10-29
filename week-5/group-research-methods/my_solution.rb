# Research Methods

# I spent [.75] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)

  sorted_array = source.clone

  sorted_array.sort!  { |a, b| a.to_s <=> b.to_s }

  return sorted_array

end

def my_hash_sorting_method(source)

   sorted_age_hash = source.sort_by {|key, value| value }

   return sorted_age_hash

end

# Identify and describe the Ruby method(s) you implemented.
# .clone' was used to clone the original array so I wouldn't alter its data and so the new array would have a different object id.
# '.sort!'' to reorder the array
# '.to_s' to convert the integers to strings while sorting so that there wouldn't be a type error
# '.sort_by' to sort the values of a hash. '.sort_by' allowed me to pass in two variables, the key and the value, and specifiy which one I wanted to sort.


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# I'm going to copy and paste my comments from above:
# .clone' was used to create a duplicate of it so it wouldn't alter the data of the original array and so the new array would have a different object id because the 'pointer' of the variable name would be pointing to a different location/object.
# '.sort!'' to reorder the array
# '.to_s' to convert the integers to strings while sorting so that there wouldn't be a type error when comparing the two
# '.sort_by' to sort the values of a hash. '.sort_by' allowed me to pass in two variables, the key and the value, and specifiy which one I wanted to sort.
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# When researching, I googled the data type I wanted to work with and the type of action I was trying to do. Also, when the Ruby docs were particularly hard to understand, usually I could find a blog (maybe someone's DBC homework) that explained things.
#
#
#