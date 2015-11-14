 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up


// Bulk Up
var athletes = []
function addAthlete(name, gameEvent, won)
{
  var athlete = {};
  athlete.name = name;
  athlete.gameEvent = gameEvent;
  athlete.won = won;
  athletes.push(athlete);
}

function gameResults(array)
{
  var won = "";
  var gameEvent = "";
  var name = "";

  for (var i = 0; i < array.length; i ++)
  {
    var won = array[i].won;
    var gameEvent = array[i].gameEvent;
    var name = array[i].name;

    console.log(name + " " + won + " the " + gameEvent + ".");
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