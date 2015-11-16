// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: I worked on this by myself. I got a bit busy with my job and couldn't find a partner in time.

// Pseudocode
// step 1: write method that takes integer as argument
// step 2: convert the integer to a string.
// step 3: Find the length of the string. If it's less than 3, do nothing.
// step 3: If the length is more than 3, find the modulus of the length.
// step 4: If the modulus is 1, create for loop that puts a comma at index 1 and then subsequently after every four spaces. If the modulus is 2, it should put a comma at index 2 and subsquently after every four spaces. If the modulus is 0, put a comma at every 3 index positions.
//step 5: output the results



// Initial Solution
/*
function separateComma (number)
{

  var numberString = number.toString();
  var numArray = [];
  var numWithCommas = "";

  if (numberString.length > 3)
  {

      var indexCount = 0;

      for (var i = numberString.length-1; i >= 0; i --)
      {
        if( (indexCount != 0) && (indexCount % 3 == 0) )
        {
          numArray.push(numberString.charAt(i) + ",");
          indexCount +=1;
        }
        else
        {
          numArray.push(numberString.charAt(i));
          indexCount += 1;
        }
      }

    var numWithCommas = numArray.reverse().join("");

    console.log(numWithCommas);
  }
  else
  {
    console.log(number);
  }

}
*/

separateComma(123);
separateComma(1234);
separateComma(12345);
separateComma(123456789);
separateComma(1234567891);

// Refactored Solution
function separateComma (number)
{

  var numberString = number.toString();
  var numArray = [];
  var numWithCommas = "";

  if (numberString.length > 3)
  {

      var indexCount = 0;
      //declaring indexCount outside of the for loop so the variable
      //updates are saved outside of the loop

      for (var i = numberString.length-1; i >= 0; i --)//counting down to reverse the index of the string
      {
        if( (indexCount != 0) && (indexCount % 3 == 0) )
        {
          numArray.push(numberString.charAt(i) + ",");
          indexCount +=1;
        }
        else
        {
          numArray.push(numberString.charAt(i));
          indexCount += 1;
        }
      }

    var numWithCommas = numArray.reverse().join("");

    console.log(numWithCommas);
  }
  else
  {
    console.log(number);
  }

}



// Your Own Tests (OPTIONAL)




// Reflection
/*
- What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
 Yes, I feel that ruby has more methods available for accessing and manipulating variables in an array.
- What did you learn about iterating over arrays in JavaScript?
In ruby you usually give a range to iterate over, such as "for i in 1..10" whereas in javascript you give a range but also define a variable and how you want it incremented over that range. Ruby is much easier and readable than javascript.
- What was different about solving this problem in JavaScript?
 I had to be much more aware of indexing and how that index changed. Also, I treated the string like an array when i called the method 'charAt()'.
- What built-in methods did you find to incorporate in your refactored solution?
  I thought the initial solution was fairly simple, so I didn't really change anything. I did add a few comments to make things clearer.
*/