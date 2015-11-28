// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM


//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
  var $body = $('body');
  var $bodyH1 = $('body>h1');
  var $divH1 = $('div>h1');
  var $img = $('img');
  $bodyH1.css("color", "red");
  $bodyH1.css("border-style", "solid");
  $bodyH1.css("visibility", "collapse");
  $divH1.html("Island Foxes!")






//RELEASE 4: Event Listener
  // Add the code for the event listener here

  $img.on('mouseover', function(event)
  {
    event.preventDefault();
    $(this).attr('src', 'http://cdn2.arkive.org/media/E3/E30E3601-D986-46EE-B8BB-070248581318/Presentation.Large/Island-fox-sitting-on-rock.jpg');
  });

  $img.on('mouseleave', function(event)
  {
    event.preventDefault();
    $(this).attr('src', 'dbc_logo.png');
  });


//RELEASE 5: Experiment on your own
  $img.click(function()
  {
    $(this).animate(
    {
      opacity: 0.25,
      left: "+=50",
      height: "toggle"
    }, 5000, function(){}); //animation complete
  });


})  // end of the document.ready function: do not remove or write DOM manipulation below this.