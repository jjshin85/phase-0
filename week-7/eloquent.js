// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var number = 24;
number +=1;

//Favorite food:

prompt("Hey, what's your favorite food?");
confirm("Hey, that's mine, too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

//Looping a triangle:

var i = 0
var pound = ""
while (i < 8)
{
  var poundAgain = pound.concat("#")
  pound = poundAgain
  i += 1
  console.log(pound)
}

//FizzBuzz:

for (var i = 1; i < 101; i ++)
{
  if ( (i % 3 == 0) && (i % 5 == 0) )
  {
    console.log(i + "FizzBuzz");
  }
  else if (i % 5 == 0){
    console.log(i + "Buzz");
  }
  else if (i % 3 == 0){
    console.log(i + "Fizz");
  }
  else
  {
    console.log(i);
  }
}
// Functions



// Complete the `minimum` exercise.

function findMinimum(var1, var2)
{
  min = Math.min(var1, var2);
  return min;
}

findMinimum(2, 20);


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {};
me.name = "Methusala";
me.age = 999;
me.favoriteFood.mashedPotatoes = "mashed potatoes";
me.favoriteFood.coffee = "coffee";
me.favoriteFood.sushi = "sushi";
me.quirk = "At one point in my life I took yodeling lessons.";