//Person 4: Refactor and translate to user stories

// Refactored Solution
function sum(numbers)
{
  total = 0;
  for (var i = 0;  i < numbers.length ;i++)
  {
     total += numbers[i];
  }
  return total;
}


function mean(numbers)
{
  var total = sum(numbers);
  var average = total/numbers.length;
  return average;
}

function median(numbers)
{
  var sort = numbers.sort(function(a, b){return a-b});
  var middle_index = numbers.length/2;
  var middle_number = sort[middle_index-1];
  return middle_number;
}

// Driver Code
var numsArray = [1,2,3,4,5,6,7,8,9,10,42,93]

console.log(sum(numsArray));
console.log(mean(numsArray));
console.log(median(numsArray));

/*
User Stories:

I want a program that takes a list of numbers and finds the sum.

I want a program that takes a list of numbers and finds the average.

I want a program that finds a list of numbers and finds the median number. If there are an even amount of numbers, I want it to find the lower number

*/