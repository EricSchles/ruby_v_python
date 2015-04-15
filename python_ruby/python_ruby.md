#Intro

Python and Ruby maybe two of the most ubitiquos and easy to use scripting languages written thus far, with other notables including [Lua](http://www.lua.org/), [Julia](http://julialang.org/), [Haskell](https://www.haskell.org/), and [JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript/About_JavaScript).

##Getting started

###Installation

Installing Ruby and Python are extremely easy

* [Ruby Install](https://www.ruby-lang.org/en/documentation/installation/)
* [Python Install](https://www.python.org/downloads/)

Both come with wonderful package managers to get the latest and greatest libraries, for each language:

* [Gem Install](https://rubygems.org/pages/download)
* [Pip Install](https://pip.pypa.io/en/latest/installing.html)

###Hello World

Unlike curly brace languages like Java and C++, writing hello world is very, very easy.

####Hello World - Java

```
public class Hello{
  	public static void main(String[] args){
		System.out.print("Hello World\n");
	}
 }
```

####Hello World - C++

```
#include <iostream>
using namespace std;

int main(){

	cout << "Hello World" << endl;
	return 0;
}
```

####Hello World - Python


`print "Hello World"`

####Hello World - Ruby

`puts "Hello World"`

####Analysis Of The Above Code
As you can see, Ruby and Python both require far, far less effort to compile even the simplest of programs.  All the understanding of classes and namespaces, includes, public versus private, and return types are removed from the basics of Ruby and Python.  This allows programmers to get started on their journey immediately, with no or little understand.  Both languages, at their core, are of the mindset, that you should only learn what you have to accomplish what you are trying to.  Of course, at some points it's usually a good idea to learn more, but only as it becomes necessary.  Say you are just looking to automate a few tasks, then there is no reason to teach you object oriented programming.

###Variables in Ruby and Python

Assigning variables is as easy as possible in both Ruby and Python.  Understanding the assignment statement, is actually more subtle and powerful than you may have believed.  We can actually think of assignment as a one way function, taking in a single parameter and returning nothing.  In mathematics we call this a relation.  This is because assignment creates a relationship between the left hand side and the right hand side of the equation.

Let's see assignment in action:

####Ruby

`x = 5` - Assigning a number to a variable

`y = "Hello"` - Assigning a string to a variable

`z = true` - Assigning a boolean to a variable

####Python

`x = 5` - Assigning a number to a variable

`y = "Hello"` - Assigning a number to a variable

`z = True` - Assigning a number to a variable

If these two sets of statements appear similar, they should.  There is a right way to do assignment, and Python and Ruby more or less agree on this.  In fact, Ruby and Python are so similar it's possible to write code that will transform one language to another, which just happens to be a [pet project](https://github.com/EricSchles/generalizedCompiler) of mine.

###Functions in Ruby and Python

Another great way Ruby and Python are similar is in creating functions:

####Functions in Ruby and Python

Making a function in Ruby only requires a def keyword and an end statement, in Python, only a def statement is required.  

#####Ruby:
```
def hello
  puts "Hello there"
end
hello() #prints "Hello there"
```
#####Python:
```
def hello():
    print "Hello there"
hello() #prints "Hello there"
```

Notice that python requires () even without parameters, whereas ruby does not.

We can also create functions that accept parameters:

#####Ruby:
```
def hi(greeting)
  puts greeting
end
hi("Hi there")
```
#####Python:
```
def hi(greeting):
    print greeting
hi("Hi there")
```

Here greeting acts as the passed in variable.

We can also have optional parameters:

#####Ruby:
```
def hey(greeting="hey")
  puts greeting
end
hey() #prints hey
hey("what's up")#prints what's up
```
#####Python:
```
def hey(greeting="hey"):
    print greeting
hey()
hey("what's up")
```

Here we define default behavior for the function, which allows us to pass parameters, only if we want to.  This is extremely powerful if a user might need to pass in a variable, but only under special circumstances.

We are now in a place to expand our definition of assignment.  Just as we passed data, we can also pass _functions_ to other functions:

#####Ruby:
```
class Add
  def adder(x,y)
    return x+y
  end
end

adder = Add.new
adding = adder.method(:adder)
puts adding.call(5,6)
```
#####Python:
```
def adder(x,y):
    return x+y
adding = adder
print adding(5,6)
```

The Ruby code is likely not optimized, as I'm not much of a ruby programmer.  There is probably a native way to pass functions, without needing to wrap it in a class, but I don't know how to do this.  If the class doesn't make sense yet, don't worry we'll be talking about those next.

The important take away is that we defined a method adder and then changed it's name to adding, without redefining the function.  This means, the function's name is meaningless, but only what it does matters.  An extremely powerful result for a number of use cases, and expanded definition of what it means to _assign_ _things_.  Now assignment means something more than just passing data around, or that functions _are_ data.  Either way, it's a very different way of thinking.







###Advanced usage of assignment

Now that we understand assignment, let's make use of it to do something _really_ meaningful - create a linked list.  A linked list is the most basic data structure around, writing one is very easy in both Python and Ruby:

 
####Linked List in Python

```
class Node:
    def __init__(self,data,next=None):
        self.data = data
        self.next = next
    def __str__(self):
        return repr(self.data)

#basic example
head = Node(0)
head.next = Node(1)
print head.next

#real linked list
head = Node(0)
cur = head
for i in xrange(10000):
    new_node = Node(i)
    cur.next = new_node
    cur = cur.next

cur = head
while cur:
    print cur
    cur = cur.next
```



