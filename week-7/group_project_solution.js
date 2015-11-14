// Whoops, I was supposed to do Person 4, but accidently did Person 3: Pseudocode to Code

function sum(array)
{
  var arraySum = 0;
  for (var i = 0; i < array.length; i ++)
  {
    arraySum += array[i];
  }
  return arraySum;
}

function mean(array)
{
  var arraySum = sum(array);
  var arrayMean = arraySum / array.length;
  return arrayMean;
}

function median(array)
{
  var medianLength = array.length / 2;
  var medianNum = 0;
  var medianNumbers = [];
  array.sort;
  if (array.length % 2 ==0)
  {
    //if the size of the list is an even number, returns average
    //of two median numbers
    medianNum = (array[medianLength-1] + array[medianLength]) / 2;
    return medianNum;
  }
  else
  {
    medianNum = array[Math.floor(medianLength)];
    return medianNum;
  }
}

