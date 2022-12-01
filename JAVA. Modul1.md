# JAVA. Part1. #
Example: System.out.println ("Write once, run anywhere!");

1. The println method is used to output a line of text. It is part of the out stream, which is part of the System class.
println 
The println method takes the text you want to output as an argument inside parentheses (аргумент в круглых скобках). 
When printing text outputs, you need to enclose the text in double quotes (двойные кавычки)

2. You don't need the quotes when you output numbers.

For example:

System.out.println(42);

3. You can use the println method multiple times:

System.out.println("Top Players:");

System.out.println("1. James");

System.out.println("2. Amy");


## Java Program ##
Example:

class Demo {

  public static void main(String[] args) {
  
    System.out.println("Hi there");
    
  }
  
}

2.1. class Demo {

The first line of the code defines a class called Demo. In Java, every line of code that can actually run needs to be inside a class.
You can call the class anything you want.

The class opens and closes using curly brackets, like this:

class Demo {

}
Any code that we want to include in the class needs to go inside the brackets.



2.2. public static void main(String[] args) {

In Java, each application has an entry point, or a starting point, which is a method called main.



2.3. Notice that the main method, similar to the class, opens and closes with curly brackets.

public static void main(String[] args) {
  System.out.println("Hi there");
}

The main method contains the code that executes (выполняется) when we run our program. In this case, the println method will be executed (будет выполнен), 
when we run our program.



2.4. The main method can contain multiple statements, for example:

class Demo {

  public static void main(String[] args) {
  
    System.out.println("Welcome");
    
    System.out.println("This is a demo"); 
    
    System.out.println("Bye");
    
  }
  
}



## Variables (Переменные) ##

Every program works with values. A variable lets you store a value by assigning it to a name. 
The name can be used to refer to the value later in the program.

Каждая программа работает со значениями. Переменная позволяет вам сохранять значение, присваивая ему имя. 
Имя может быть использовано для ссылки на значение позже в программе.

For example, in game development, you would use a variable to store how many points the player has scored.

Every variable has a type, which defines the type of the value it holds. A variable can hold a text value, a number, a decimal, etc.
We are already familiar with text values - they are created using quotes:

"this is some text"

Text in quotes is called a String.

Let's create a variable of type String:
String name;

This creates a variable called name of type String. Now, our variable name can hold String values.
In programming terms, the process of creating a variable is called declaration (объявление переменной).

After declaring our variable, we can assign it a value using the assignment = operator:

String name;

name = "James";

Note, that the type String should start with a capital letter S. A lowercase version will cause an error.

We can combine the declaration and assignment into one statement, like this:

String name = "James";

This is handy when we already know the value for our variable and makes the code shorter and more readable.

A variable can change its value during the program multiple times. For example, the player of a game can change his name:
String name = "James";

name = "David";

System.out.println(name);

result = David!

## Types ##

1. The int type is used to store whole numbers (or integers, as we call them in programming).

int age = 42;

Now, the age variable of type int holds the value 42.

2. Decimals
2.1. To work with decimal numbers, use the type double:

double weight = 12.5;

2.2. Java has another type for decimals called float.
When using the float type, you need to use an f postfix after the value:

float height = 1.94f;

This tells Java to use the value as a float, instead of double.

### float vs dobule ###

By default, decimal values are of type double. float is using less storage in the memory, but is not as precise as the double type.

float использует меньше места в памяти, но не так точен, как тип double.

This means that the calculations that use floats are faster than the ones that use double, however, the result is less accurate in terms of the decimal digits.
Это означает, что вычисления, использующие числа с плавающей запятой, выполняются быстрее, чем те, которые используют double, однако результат менее точен с точки зрения десятичных цифр.


As a general rule: use float instead of double when memory usage is critical. If you need more precise computations, for example, when dealing with currency, use double.
Как общее правило: используйте float вместо double, когда использование памяти критично. Если вам нужны более точные вычисления, например, при работе с валютой, используйте double.

## Characters ##

The char type is used to hold a single character. It is created similar to Strings, however it uses single quotes for the value:

char letter = 'B';

result = B

VALIUE IN SINGLE QUOTES!

## Boolean ##

It can hold only the values true or false. This is handy when we work with states or conditions, for example:

boolean isOpen = false;

For example, the boolean above can show whether a shop is open or closed.

## Doing Math ##

### 1. You can use common math operators to perform calculations. For example: ###

int x = 6;

int y = 3;

The result can be assigned to another variable, like this:

double price1 = 24.99;

double price2 = 19.45;

double sum = price1 + price2;

System.out.println(x+y);

### 2. Similarly, you can use - for subtraction (вычитание): ###

int salary = 90000;

int tax = 15000;

int result = salary - tax;

### 3. Multiplication ###

The * operator multiplies two values.

Let's use it to find how much is 20% of the given value:

int price = 1200;

System.out.println(price*0.2);

### 4. Division (поделить) ###

The / operator divides one value by another. The following program calculates how many products with the given price you can buy with the given amount:

int amount = 9000;

int price = 49;

int result = amount/price;

System.out.print(result);


In the example above, the result of the division equation will be a whole number, as int is used as the data type. 
result: 183

You can use double to get the result of the division with a decimal point.

double amount = 9000;

double price = 49;

double result = amount/price;

System.out.print(result);

result = 183.6734693877551

### 5.Modulo (остаток от деления) ###

The modulo % (or remainder) math operation returns the remainder of a division. For example, let's use it to find how many of the given items will be left over if we place them in boxes of 5:

int items = 23;

int res = items % 5;

result = 3

## Strings ##

Java allows to add together strings, using the + operator. The result is the combination of the strings. For example, let's combine the first and last names to result in the full name of a user:

String firstname = "James";

String lastname = "Smith";

String fullname = firstname+lastname;

Note, that the result will combine the given strings without any separator. We can add a space " " between them:

String fullname = firstname+" "+lastname;

+ is addition

- is subtraction

/ is division

% finds the remainder of a division.
