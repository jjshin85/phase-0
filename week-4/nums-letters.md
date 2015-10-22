## 4.2

### Release 1

- What does puts do?

  Puts returns nil for the return type (that means that you're not expecting a result to an equation) and prints the output to a new line. For example, if you want to print an array:

````ruby
print [1, 2, 3, 4]
````
  this will output the following:
````
1, 2, 3, 4
````
  But if you type the following:
````ruby
puts [1, 2, 3, 4]
````
  it will give you this as its output:
````
1
2
3
4
````
  It will add a new line between each output rather than concatanating them.

- What is an integer? What is a float?

  An integer is a whole number and a float is a number with a decimal, like 3.4. Because these numbers are written in binary, they are categorically different and care has to be taken when dealing with fractions and decimals.

- What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

  If you divide an integer, Ruby will only return a whole number value. So if you take 1/4, it will return 0 because it's expecting an integer value as the result. Therefore, if you want more accuracy, you have to change at least one of the numbers to floats so that Ruby will expect a float as a result. So instead of writing '1/4', you'd have to write '1.0/4' or '1/4.0' in order to get a result of '0.25'.

### Release 2 Mini-challenges:

The following code calculates the hours in a year and the minutes in a decade:

````ruby
hours_in_year = 365 * 24

puts "The number of hours in a year is #{hours_in_year}"

min_in_decade = hours_in_year * 60 * 10

puts "the number of minutes in a decade is #{min_in_decade}"
````
### Release 7: Reflect

- How does Ruby handle addition, subtraction, multiplication, and division of numbers?
  Ruby addition with the '+', subtraction with the '-', multiplication with the '*', and division with the '/' operator symbol. Ruby will also follow the standard order of operations, but it's still good to clearly define how you want the numbers to interact. For example, '2 + 2 * 3' do the multiplcation first, but you may still want to add parentheses, such as'2 + (2 * 3)', to make it clearer. Also, if you are doing division, you need to declare either the numerator or the denominator as a float, otherwise it will give you an integer result and ignore anything after the decimal point.

- What is the difference between integers and floats?
  An integer is a whole number and a float is a number with a decimal in it, like 1.4 or 3.14. This is because the numbers are converted to binary and therefore they're different file types taking up different amounts of memory storage.
- What is the difference between integer and float division?
  This is the same question as earlier, so I'm just going to copy and paste my previous answer:
  If you divide an integer, Ruby will only return a whole number value. So if you take 1/4, it will return 0 because it's expecting an integer value as the result. Therefore, if you want more accuracy, you have to change at least one of the numbers to floats so that Ruby will expect a float as a result. So instead of writing '1/4', you'd have to write '1.0/4' or '1/4.0' in order to get a result of '0.25'.

- What are strings? Why and when would you use them?
  Strings are basically sentences or words, collections of sequences of alphanumeric characters. You use strings in place of words and text.

- What are local variables? Why and when would you use them?
  Local variable is a type of variable that can be used where the scope and extent of the variable is within the method or statement block in which it is declared. As the book says, it lives in the method and can't leave it. So for example:

  ````ruby
  def my_name_is(name)
    introduction = "My name is #{name}""
    puts introduction
  end
  ````
  The 'introduction' variable is only seen and used within the method. If you try to call it outside of the method, it won't work because it only exists within the method.

- How was this challenge? Did you get a good review of some of the basics?
  I thought it was fairly easy but serves as a fair introduction to data types. I found that my ruby skills were a bit rusty and I had a lot of brushing up to do.
