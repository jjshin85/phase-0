puts "What is your first name?"
first_name = gets.chomp
puts "What's your middle name?"
middle_name = gets.chomp
puts "What's your last name?"
last_name = gets.chomp
puts "Hello #{first_name} #{middle_name} #{last_name}!"

puts "What's your favorite number?"
fav_num = gets.chomp.to_i
better_num = fav_num + 1
puts "You know... #{better_num} is even bigger...?"

=begin

The following are links to the 4.3 sub-challenges:

4.3.1 Return a Formatted Address
 https://github.com/jjshin85/phase-0/blob/master/week-4/address/my_solution.rb

4.3.2 Defining Math Methods
https://github.com/jjshin85/phase-0/blob/master/week-4/math/my_solution.rb

Reflection Questions:

• How do you define a local variable?
  you use a '=' symbol to define it, having the variable on the left side and the value for the variable on the right side.

  i.e. 'local_variable = value'


• How do you define a method?
  Open the method definition with 'def' followed by the method name and then any arguments (a variable that the method might need) it might take. Then you write whatever code you need for the method, and you close the method with 'end'

  i.e.

      def method_name(string)
        puts string
      end


• What is the difference between a local variable and a method?

  A local variable is a variable that can only be used within the method (nothing can call the variable outside the method), and a method is an action that you want Ruby to do. For example, if you want ruby to add two numbers together, you would write a method which would take two variables–the numbers you want to add–and then add them together and returning the sum.

• How do you run a ruby program from the command line?

  Type "ruby " followed by the name of the program.
  i.e. 'ruby program_name.rb'

• How do you run an RSpec file from the command line?

  Type in 'rspec' followed by the name of the file, i.e. 'rspec file_name.rb'

• What was confusing about this material? What made sense?

  I have some experience in Java, so not specifying the data type for the variable is a little strange for me. It makes things easier, but it can be quite useful to know and think about what datatype you're working with. Also, the syntactical differences can be confusing, like giving a variable to a method without using parentheses, like "method_name variable" and not "method_name(variable)".

=end