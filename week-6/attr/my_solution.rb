#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

class NameData

end


class Greetings

end



# Reflection

=begin

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


