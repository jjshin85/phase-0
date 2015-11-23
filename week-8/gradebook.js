/*
Gradebook from Names and Scores
I worked on this challenge [with: Syema Ailia]
This challenge took me [1] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]


// __________________________________________
// Write your code below.
/*
var gradebook = {};

for (var i = 0; i < students.length; i ++){
  var studentName = students[i]
  gradebook[ students[i] ] = {};
}
for (var names in students)
{
  var studentName = students[names]
  gradebook[studentName] = {};
}

var counter = 0;
for (var name in gradebook)
{
  gradebook[name].testScores = scores[counter];
  counter +=1;
}

gradebook.addScore = function(name, score)
{
  gradebook[name].testScores.push(score);
};

gradebook.getAverage = function(name)
{
  var averageVal = average(gradebook[name].testScores);
  return averageVal;
};

console.log(gradebook);

average = function(array)
{
  var total = array.reduce(function(a, b)
  {
  return a + b;
  });
  var averageVal = total / array.length;
  return averageVal;
}

*/


// __________________________________________
// Refactored Solution

var gradebook = {};

//iterate through 'students' array and assign each value as a property for 'gradebook' object.

for (var names in students)
{
  var studentName = students[names]
  gradebook[studentName] = {};
}

//iterate through 'gradebook' properties and add 'testScores' as a sub-property to each.
//iterate through 'scores' array and assign each value as the value of its corresponding person's testScores' property
var counter = 0;
for (var name in gradebook)
{
  gradebook[name].testScores = scores[counter];
  counter +=1;
}

gradebook.addScore = function(name, score)
{
  gradebook[name].testScores.push(score);
};

gradebook.getAverage = function(name)
{
  var averageVal = average(gradebook[name].testScores);
  return averageVal;
};

average = function(array)
{
  var total = array.reduce(function(a, b){return a + b});
  var averageVal = total / array.length;
  return averageVal;
}

// __________________________________________
// Reflect
/*
- What did you learn about adding functions to objects?
  You don't need to create a function for an object when you initialize it, you can create it afterwards.

- How did you iterate over nested arrays in JavaScript?
  I used the 'for(var property in object)' which iterates through each property of an object.

- Were there any new methods you were able to incorporate? If so, what were they and how did they work?
  Yes, 'reduce()' which finds the sum of an array and also the aforementioned 'for' iterator method.
*/





// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)