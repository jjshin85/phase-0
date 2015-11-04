#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

class NameData

attr_accessor :name

  def initialize(name)
    @name = name
    p "NameData object initialized"
  end

end

class Greetings

  def initialize(name)
    @name_data_obj = NameData.new(name)
    p "Greetings object initialized"
  end

  def greeting
    name = @name_data_obj.name
    p "Salutations, #{name}!"
  end

end

=begin

# Reflection

- What is a reader method?
  A reader method is a method that reads or retrieves the instance variable of an object. It can be used by any instance of an object of that class, so it's a way for programs to access variables of a specific class.
- What is a writer method?
  The writer method declares or updates the value for the instance variable. That way any instance of an object of that class can use the method. It's a way for the instance variable to be accessed outside of the file where the class was initially written.

- What do the attr methods do for you?
  They provide read and write methods for a class, exactly like the above mentioned reader and writer methods.

- Should you always use an accessor to cover your bases? Why or why not?
  No, because that might grant a user too much access. Suppose you only want to give a user read access and you don't want them to have the ability to write data.

- What is confusing to you about these methods?
  Nothing really, they seem pretty straight forward.


# Release 1:

- What are these methods doing?

'what_is_name' returns the @name variable, 'what_is_age' returns the @age variable, and 'what_is_occupation' returns the occupation variable. 'change_my_name=' changes the @name variable. Otherwise you'd have to create a new instance of profile. 'change_my_age' and 'change_my_occupation' changes the @age and @occupation variables respectively.

- How are they modifying or returning the value of instance variables?
the 'change_my' methods rewrites the instance variables and the 'what_is' methods returns them.

# Release 2:

They took out the 'what_is_age' method and added 'attr_reader :age'. Now, to get the @age variable, you simply need to use the 'age' method which was defined by 'attr_reader :age'. The way it declares the variable name to look for (it didn't declare that ':age' equaled '@age', ruby knew this automatically). with the method name is definitely simpler.

# Release 3:

In addition to 'attr_reader :age', 'attr_writer :age' has been added and the 'change_my_age' method has been removed. Now, in order to read or write the age, one simply has to use the '.age' method (so yes, this code is simpler).

# Release 4:

class Profile

  attr_accessor :age, :name, :occupation

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end

  def print_info
    puts
    puts "age: #{@age}"
    puts
    puts "name: #{@name}"
    puts
    puts "occupation: #{@occupation}"
    puts
  end
end

=end