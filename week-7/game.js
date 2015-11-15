 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Escape a locked room
// Overall mission: Use resources to escape
// Goals: taste sweet sweet freedom
// Characters: user
// Objects: mentos, a bottle of cola, a bowl, a lighter, half a granola bar
// Functions: pick up, examine, use, use with

// Pseudocode
//Locked room game. The player must use the resources within the room to escape.
//The player can examine the room and interact with objects in the room to escape.
//
//
//
//
//

// Initial Code
var readline = require('readline');

var rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

/*rl.question("What do you think of Node.js? ", function(answer) {
  // TODO: Log the answer in a database
  console.log("Thank you for your valuable feedback:", answer);

  rl.close();
});*/


function Item(name, description)
{
  this.name = name;
  this.description = description;
}
var bottleCola = new Item("bottle of cola", "It is 3/4 full and a little flat.");
var mentos = new Item("a full pack of mentos", "They're the fresh maker.");
var nextToDoor = "next to the door";
var nextToWindow = "next to the window";
var middleOfRoom = "the middle of the room";
var currentLocation = middleOfRoom;
var listOfItems = [bottleCola, mentos];
var locations = [nextToWindow, nextToDoor, middleOfRoom];
var wrongInput = false; //this will be useful later when checking user input

function Character (name)
{
  this.name = name;
}

function examine (object)
{
  console.log(object.description);
}

function examineRoom()
{
  console.log("The room is smelly and dark. In the room there are:");
  for (var i = 0; i < listOfItems.length; i ++)
  {
    console.log(listOfItems[i].name);
  }
}

function moveLocation(object)
{
  console.log("Where would you like to move the?");
  console.log("Next to the door, the middle of the room, or the window?");
}

function changeLocation(location)
{
  currentLocation = location;
  console.log("You are now in " + currentLocation);
}

function listActions()
{
  console.log("What would you like to do? Please type the number of your choice.");
  console.log("1. Move an object?");
  console.log("2. Examine an object?")
  console.log("3. Use an object?")
}


function getInput ()
{
  process.stdin.resume();
  process.stdin.setEncoding('utf8');
  var util = require('util');
  var userText = "";
  process.stdin.on('data', function (text)
    {
      console.log('received data:', util.inspect(text));
      userText = text;
      if (userText != "")
      {
        process.pause();
      }
    });


  console.log(userText);
  return userText;
}

function useWith (a, b)
{
  if ((a || b) == mentos) and ((a || b) == bottleCola)
  {
    console.log("....");
    console.log("....");
    console.log("....");
    console.log("PPPPPPSHSHHHHHHH, the cola exploded!");
    if (currentLocation == nextToWindow)
    {
      console.log("Congratulations, luckily the force of the explosion broke the window and now you're free!")
    }
    else
    {
      console.log("Now you're covered in soda. You're still trapped. Possibly forever.")
    }
  }
}
//Everything below this is the actual game

var name = "";

rl.question("Hello, fateful user! What's your name?", function(answer) {
  // TODO: Log the answer in a database
  name = answer;
  console.log("Greetings, " + name + "!");
  {
    if (answer != "")
    {
      rl.pause();
    }
  }
});
character = new Character(name);



console.log("Here is the situation:");
console.log("You are trapped in a small 8ft x 8ft room. What would you like to do?")

var userAction;
function chooseFirstAction()
{
  console.log("Type the number corresponding to your choice.");

  rl.question("1. Move around the room\n2. Examine the room.", function(answer) {
    // TODO: Log the answer in a database
    userAction = answer;
    if (answer != "")
    {
      rl.pause();
    }
  });
}

chooseFirstAction();
if (userAction == 1)
  {
    console.log("Great, now you've stretched your legs and walked the perimeter of the room.")
    console.log("That didn't take long. Now let's examine the room.");
    examineRoom();
    wrongInput = false;
  }
  else if (userAction == 2)
  {
    examineRoom();
    wrongInput = false;
  }
  else
  {
    console.log("I'm sorry, I don't understand. Can you choose again.")
    wrongInput = true;
  }


if (wrongInput == true)
{
  chooseFirstAction();
}
// Refactored Code






// Reflection
//
//
//
//
//
//
//
//