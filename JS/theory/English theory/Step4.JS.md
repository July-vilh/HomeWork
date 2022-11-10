# Step4 #

## Comparison Operators ##

We can use comparison operators in logical statements to find out if variables or values are different.

You get either true or false.
For example, the equal to (==) operator checks whether the operands' values are equal.

var num = 10; 

console.log (num == 8); //outputs false

Heads up!
You can compare all types of data with comparison operators, they’ll always return true or false.

Comparison Operators

Check out this table to see a breakdown of comparison operators.

Heads up!
One important thing to remember when we use operators, is that they only work when they’re comparing the same data type; numbers with numbers, strings with strings, you get the idea.

---
## Logical Operators ##

Logical Operators, also known as Boolean Operators, (or the Vulcan Operators….ok, that one isn't true) evaluate an expression and return true or false.

Check out the table below to see more details on the logical operators (AND, OR, NOT).

Heads up!
You can check all types of data; comparison operators always return true or false.

Logical Operators

Let's take a look at an example. Here we’ve connected two Boolean expressions with the AND operator.

(4 > 2) && (10 < 15)

For this expression to be true, both conditions need to be true.

+ The first condition determines whether 4 is greater than 2, which is true.
+ The second condition determines whether 10 is less than 15, which is also true.

---
## Conditional (Ternary) Operator ##

Conditional, or Ternary, operators assign a value to a variable, based on some condition.

This is what the syntax would look like:

variable = (condition) ? value1: value2 

And here’s an example:

var isAdult = (age < 18) ? "Too young": "Old enough"; 

If the variable age is a value below 18, the value of the variable isAdult will be "Too young". Otherwise the value of isAdult will be "Old enough".

Heads up!
With logical operators you can connect as many expressions as you want or need to.

---
## String Operators ##

Time to introduce the most useful operator for strings...drum roll please.

...Concatenation.

We can use concatenation (represented by the + sign) to build strings made up of multiple smaller strings, or by joining strings with other types. Check it out:

var mystring1 = "I am learning "; 

var mystring2 = "JavaScript with SoloLearn."; 

document.write (mystring1 + mystring2);

This example declares and initializes two string variables, and then concatenates them. Simple...but super useful!

Heads up!
Numbers in quotes are treated as strings: So "42" is not the number 42, it’s a string that includes the two separate characters, 4 and 2.
