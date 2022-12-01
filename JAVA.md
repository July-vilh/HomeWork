# JAVA #
Example: System.out.println("Write once, run anywhere!");

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

