# Step 5 #

## The if Statement ##

Often when we write code, we want to perform different actions based on different conditions.

And this is where conditional statements come in.

There are a bunch of different conditionals, to cover, but we’re starting with one of the most useful: "if"

We use if to specify a block of code that we want to be executed if a specified condition is true.

if (condition) { 

statements 

}

The statements will only be executed if the specified condition is true. Let’s take a look at an example:

var myNum1 = 7; 

var myNum2 = 10;

if (myNum1 < myNum2) { 

alert("JavaScript is easy to learn."); 

}

Heads up!
You can see from the example above, we’ve used the JavaScript alert() to generate a popup alert box that contains the information inside the parentheses.

The if Statement

Here’s a little more detail on the if statement.

var myNum1 = 7; 

var myNum2 = 10; 

if (myNum1 > myNum2) { 

alert("JavaScript is easy to learn."); 

Because the condition evaluates to false, the alert statement gets skipped and the program continues with the line after the if statement's closing curly brace.

Heads up!
if is in lowercase letters. Uppercase letters (If or IF) won’t work.

---
## The else Statement ##

Right, so we’ve seen that the action gets skipped when a code block using the if statement evaluates to false, but what if we want something else to happen.
Well, we use the "else" statement, of course!

We can use the else statement to specify a block of code that will execute if the condition is false. Like this:

if (expression) { 

// executed if condition is true 

} 

else { 

//executed if condition is false 

}

Heads up!
You can skip the curly braces if the code under the condition contains only one command.

The else Statement

Here’s another example of the if and else statements working together:

var myNum1 = 7; 

var myNum2 = 10; 

if (myNum1 > myNum2) { 

alert("This is my first condition"); 

} 

else { 

alert("This is my second condition"); 

}

Let's translate that example. It says:

+ If myNum1 is greater than myNum2, alert "This is my first condition";

+ Else, alert "This is my second condition".

So the browser will print out the second condition, as 7 is not greater than 10.

Heads up!
There's another way to do this check using the ? operator: a > b ? alert(a) : alert(b).

---
## else if ##

We've seen else, we've seen if, time to meet else if.

The else if statement is useful because it lets us specify a new condition if the first condition is false.

Like this:

var course = 1; 

if (course == 1) { 

document.write(""<h1 HTML Tutorial<h1>"); 

} else if (course == 2) { 

document.write(""<h1 CSS Tutorial<h1>"); 

} else { 

document.write(""<h1 JavaScript Tutorial<h1>"); 

}

This is what's happening in the code above:

+ if course is equal to 1, output "HTML Tutorial";

+ else, if course is equal to 2, output "CSS Tutorial";

+ if none of the above condition is true, then output "JavaScript Tutorial";

Heads Up!
The final else statement "ends" the else if statement and should be always written after the if and else if statements.

