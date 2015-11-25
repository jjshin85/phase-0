/*


input: grocery items (strings) and their quantities (integers)
output: a list of the grocery items(strings) and their corresponding quantities (integers)
pseudocode:
Step 1: Make an object for the list of groceries.
Step 2: Create a method that will take an item and quantity as input and add these values to the list of groceries. It should add the item as a property to groceries and the quantity as the value of that property.
Step 3: Create a function that will find remove the item from the list.
Step 4: Create a function that will update the quantity of an item from the list.

*/

//Initial Solution/Refactored Version:

var groceries = {};

formatName = function(itemName)
{
  var item = itemName.replace(/\s/g, '').toLowerCase();
  return item;
}


groceries.addItem = function (item, quantity)
{
  var formattedName = formatName(item);

  if (groceries.hasOwnProperty(formattedName))
  {
    groceries[formattedName] += quantity;
  }
  else
  {
    groceries[formattedName] = quantity;
  }
}

groceries.removeItem = function(item)
{
  var formattedName = formatName(item);
  if (groceries.hasOwnProperty(formattedName)){
    delete groceries[formattedName];
  };
}

groceries.updateItem = function(item, quantity)
{
  var formattedName = formatName(item);
  if (groceries.hasOwnProperty(formattedName))
  {
    groceries[formattedName] = quantity;
  }
}

groceries.showItems = function()
{
  for (var keys in groceries)
    {
      var itemQuantity = groceries[keys].quantity;
      console.log("Item: " + groceries[keys] + "quantity: " + itemQuantity);
    }
}


//Driver code:
groceries.addItem("Lemonade", 2);
groceries.addItem("Tomatoes", 3);
groceries.addItem("Onions", 1);
groceries.addItem("Ice Cream", 4);

console.log(groceries);

groceries.removeItem("Lemonade");
groceries.updateItem("Ice Cream", 1);

console.log(groceries);

/*
Reflection:

- What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
 I reviewed passing information to objects, adding functions, accessing properties, naming properties. I also solidified my understanding of data types and syntax when I had some unexpected identifier errors when I didn't use parentheses or the variable was outside of the scope.
- What was the most difficult part of this challenge?
 Trying not to get the functions to show up when I was outputting the results. I still couldn't figure it out.

- Did an array or object make more sense to use and why?
  An object because it could keep the relationship of values.
*/