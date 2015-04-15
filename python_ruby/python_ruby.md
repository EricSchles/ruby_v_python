#Intro

Python and Ruby maybe two of the most ubitiquos and easy to use scripting languages written thus far, with other notables including [Lua], [Julia], [Haskell], and [JavaScript].

##Getting started

###Installation

Installing Ruby and Python are extremely easy

* [Ruby Install]()
* [Python Install]()

Both come with wonderful package managers to get the latest and greatest libraries, for each language:

* [Gem Install]()
* [Pip Install]()

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

If these two sets of statements appear similar, they should.  There is a right way to do assignment, and Python and Ruby more or less agree on this.  In fact, Ruby and Python are so similar it's possible to write code that will transform one language to another, which just happens to be a [pet project]() of mine.

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


