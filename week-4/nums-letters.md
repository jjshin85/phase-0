# 4.2

## Release 1

- What does puts do?
Puts returns nil for the return type (that means that you're not expecting a result to an equation) and prints the output to a new line. For example, if you want to print an array:

````ruby
print [1,2,3,4]
````
this will output
````
1, 2, 3, 4
````
But if you type the following:
````ruby
puts [1,2,3,4]
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

## Release 2 Mini-challenges:

````ruby
hours_in_year = 365 * 24

puts "The number of hours in a year is #{hours_in_year}"

min_in_decade = hours_in_year * 60 * 10

puts "the number of minutes in a decade is #{min_in_decade}"
````

