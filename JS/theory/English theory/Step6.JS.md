# Switch #

But what if you need to test for multiple conditions? In those cases, writing if else statements for each condition might not be the best solution.

Instead, we can use the switch statement to perform different actions based on different conditions.

Here's what that looks like:

switch (expression) { 

case n1: 

statements 

break; 

case n2: 

statements 

break; 

default: 

statements 

}

The switch expression is evaluated once. The value of the expression is compared with the values of each case, and if there’s a match, that block of code is executed.
Heads up!

You can achieve the same result with multiple if...else statements, but the switch statement is more effective in such situations.

The switch Statement


Let's look at another example:

var day = 2; 

switch (day) { 

case 1: 

document.write("Monday"); 

break; 

case 2: 

document.write("Tuesday"); 

break; 

case 3: 

document.write("Wednesday"); 

break; 

default: 

document.write("Another day"); 

} 

Simple, right?
Heads up!
You can have as many case statements as you need.

The break Keyword

So we have learned that the switch statement tests a code block, but we won't always want it to test the whole block. The break keyword essentially switches the switch statement off.

Breaking out of the switch block stops the execution of more code and case testing inside the block.
Heads up!
Usually, a break should be put in each case statement.

The default Keyword

Often there will be no match, but we still need the program to output something...for this we use the default keyword, which specifies the code to run if there’s no case match.

Like this:

var color ="yellow"; 

switch(color) { 

case "blue": 

document.write("This is blue."); 

break; 

case "red": 

document.write("This is red."); 

break; 

case "green": 

document.write("This is green.");

break; 

case "orange": 

document.write("This is orange."); 

break; 

default: 

document.write("Color not found."); 

} 

Heads up!
The default block can be omitted, if there is no need to handle the case when no match is found.

