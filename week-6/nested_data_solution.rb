# I worked on this with Syema Ailia and we spent 1 hour on it.

# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer:
  {inner:
    {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

=begin
def add_five(array)

  new_array = []

  array.each do |element|

    if element.is_a? Integer
      #check if element in array is int

      element += 5
      new_array << element

    else
      #otherwise element in array is an inner array
      sub_array = []

      element.each do |sub_element| #'element' refers to the inner array
        sub_element += 5
        sub_array << sub_element
      end
      new_array << sub_array

    end
  end
  p new_array
end
=end

@num_array
def add_five(array)
  array.map! do |element|

    if element.is_a? Integer
      element += 5

    else #If not an integer, it's an array
      add_five(element)
      #calling method again and inputting element as array argument
    end
  end
  @num_array = array
end

add_five(number_array)
p @num_array



# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

=begin
def add_ly(array)
  new_array = []

  array.each do |element|
    if element.is_a? String
      element << "ly"
      new_array << element
    else
      sub_array = []

      element.each do |sub_element|
        if sub_element.is_a? String

          sub_element << "ly"
          sub_array << sub_element
        else
          sub_sub_array = []
          sub_element.each do |sub_sub_element|
            sub_sub_element << "ly"
            sub_sub_array << sub_sub_element
          end
          sub_array << sub_sub_array
        end
      end
      new_array << sub_array
    end
  end

  p new_array
end
=end

@str_array = []
def add_ly(array)
  array.map! do |element|
    if element.is_a? String
      element << "ly"
    else
      add_ly(element)
    end
  end
  @array = array
end

add_ly(startup_names)
p @str_array

# Reflection:

=begin
- What are some general rules you can apply to nested arrays?
  I think of it like a branching tree or flow chart, and you have to follow the path... I hope that makes sense. Just check your logic for checking indeces and which array you're in.

- What are some ways you can iterate over nested arrays?
  Nested loops. We used recursion to call the method again within itself if certain conditions were met.

- Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
Well, I'm very proud of using recursion. Also we discovered the '.each' method is non-destructive, so we used '.map!' to modify the array. We also learned how to call elements of a nested array, i.e. 'main_array[main_array_index_position][nested_array_index_position]'.

=end