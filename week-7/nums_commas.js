// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// Step 1: write method that takes integer as argument
// step 2: convert the integer to a string.
// step 3: Find the length of the string. If it's less than 3, do nothing.
// step 3: If the length is more than 3, find the modulus of the length.
// step 4: If the modulus is 1, create for loop that puts a comma at index 1 and then subsequently after every four spaces. If the modulus is 2, it should put a comma at index 2 and subsquently after every four spaces. If the modulus is 0, put a comma at every four index positions.
//step 5: output the results



// Initial Solution

function separateComma (number)
{
  var numberString = number.toString();
  var numArray = [];
  var newString = "";
  if (numberString.length > 3)
  {

      var indexCount = 0;
      for (var i = numberString.length-1; i >= 0; i --)
      {
        if((indexCount !=0) && (indexCount % 3 == 0))
        {
          numArray.push(",");
          numArray.push(numberString.charAt(i));
          indexCount +=1;
        }
        else
        {
          numArray.push(numberString.charAt(i));
          indexCount += 1;
        }
      }
    newString = numArray.reverse().join("");

    console.log(newString);
  }
  else
  {
    console.log(number);
  }

}

/*

    for (var i = numberString.length - 1; i >= 0; i --)
    {
      numArray.push(numberString.charAt(i));
    }
    for (var i = 0; i < numArray.size; i ++)
    {
        numArray
    }

    var numWithCommas = numArray.toString()
    */



separateComma(1000);
separateComma(123456789);
separateComma(10000);
separateComma(100);
// Refactored Solution




// Your Own Tests (OPTIONAL)




// Reflection