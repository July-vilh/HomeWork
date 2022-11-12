# Break #

We've met the break statement earlier in this module, we use it to "jump out" of a loop and continue executing the code after the loop.

Like this:

for (i = 0; i <= 10; i++) { 

if (i == 5) {

break;

}

document.write(i + "<br/>);

}

In this example, once i reaches 5, it will break out of the loop.

Heads up!
You can use the return keyword to return some value immediately from the loop inside of a function. This will also break the loop.

---
# Continue #

We're nearly done with module 3! One last thing to cover.

Unlike the break statement, the continue statement breaks only one iteration in the loop, and continues with the next iteration.
Like this:

for (i = 0; i <= 10; i++) {

if (i == 5) {

continue;

}

document.write(i + "<br/>);

}

Heads up!
The value 5 is not printed, because continue skips that iteration of the loop.


