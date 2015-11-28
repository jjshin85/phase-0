// DOM Manipulation Challenge


// I worked on this challenge [with: Peter Wood].


// Add your JavaScript calls to this page:

// Release 0:
var release0 = document.getElementById("release-0");
release0.className = "done";


// Release 1:
document.getElementById("release-1").style.display = "none";

// Release 2:
document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2!";


// Release 3:
document.getElementById("release-3").style.backgroundColor =  "#955251";



// Release 4:
var release4 = document.getElementsByClassName("release-4");


for (var i = 0; i < release4.length; i++)
{
    release4[i].style.fontSize = "2em";
}


// Release 5:

var hidden = document.getElementById("hidden");
document.body.appendChild(hidden.content.cloneNode(true));

// Reflection:
/*
- What did you learn about the DOM?
  It works just like an object, and that object has a hierarchy of elements commonly referred to as 'nodes'. If you can keep track of the hierarchy, accessing the elements is easy.

- What are some useful methods to use to manipulate the DOM?
  'getElementById()' and 'getElementsByClassName' were super useful for assigning an element from the DOM to a variable that we could then programmatically manipulate. Also, if you use 'getElementsByClassName' it returns an array, so if you want to modify the elements of the array you have to iterate through it.
*/