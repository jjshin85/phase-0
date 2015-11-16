 // JavaScript Olympics

// I paired [by myself] on this challenge.

// This challenge took me [1] hours.


// Warm Up


// Bulk Up
var athletes = []
function addAthlete(name, gameEvent, win)
{
  var athlete = {};
  athlete.name = name;
  athlete.gameEvent = gameEvent;
  athlete.win = win;
  athletes.push(athlete);
}

function gameResults(array)
{
  var win = "";
  var gameEvent = "";
  var name = "";

  for (var i = 0; i < array.length; i ++)
  {
    var win = array[i].win;
    var gameEvent = array[i].gameEvent;
    var name = array[i].name;

    console.log(name + " " + win + " the " + gameEvent + ".");
  }
}
addAthlete("NPH", "discus throw", "lost");
addAthlete("John Johanson", "pole vault", "won");
gameResults(athletes);



// Jumble your words
function reverseString(string)
{
  strArray = [];
  for (var i = string.length -1; i >=0 ; i --)
  {
    strArray.push(string.slice(i, i+1));
  }
  newString = strArray.join("");
  console.log(newString);
}
reverseString("A man a plan a canal... Panama!");

// 2,4,6,8

function onlyEvens(array)
{
  evenArray = array.filter(isEven);
  console.log(evenArray);
}
function isEven(number)
{
  return number % 2 == 0
}

onlyEvens([1,3,4,5,6,7,8,9,2,3,4,3,3]);

// "We built this city"

function Athlete(name, age, sport, quote)
{
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
  return this;
}
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
/*
- What JavaScript knowledge did you solidify in this challenge?
  How to declare and access variables and properties. How to add a property to an object. Also, how to write functions.
- What are constructor functions?
 They're like initialize methods in ruby. They create objects and instantiate properties with the values passed from the arguments.
- How are constructors different from Ruby classes (in your research)?
 You can add properties outside of an object's instantiation by a constructor and the value will be stored by the object. I think.
*/