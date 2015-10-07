# Data Drill: Stack and Queue
## Summary
In this challenge, we will explore two common data structures: stacks and queues.  We'll begin by understanding how each works and then we'll implement them in Ruby.

Like arrays, stacks and queues are collections (i.e., they're objects that contain other objects).  However, arrays provide a more flexible interface than either stacks or queues.  We can add elements to an array at the front, at the end, or in the middle.  Similarly, we can access and remove elements from anywhere in the array.  Stacks and queues, meanwhile, have a more specialized set of behaviors, which we'll explore.  The specialization centers around how we add elements to and remove elements from each data type.


### Stack
Stacks have two primary behaviors: *push* and *pop*.  In other words, we add elements to the stack, and we remove them.  The defining feature of a stack is how we add and remove elements.  When we push an element onto the stack, we can only place it on the top of the stack.  When we pop an element from the stack, we can only remove the top-most element.  We'll might see this behavior pattern referred to as *last in, first out*.

### Queue
Queues also have two primary behaviors: *enqueue* and *dequeue*.  Again, adding elements and removing elements.  We add elements to the end of the queue and remove them from the front of the queue.  A queue follows a *first in, first out* pattern.  In other words, elements are removed from a queue in the same order as they are added.


## Releases
### Release 0: Understanding Data Structures
and be easily able to answer the questions:

* What is the best way to store this data?
* What is the best way to access this data?

Read over the list of [Data Structures on Wikipedia](http://en.wikipedia.org/wiki/List_of_data_structures) and notice how they are grouped. Try to think how each could be used to solve a particular pattern. Then look up the common data structures below:

* Stack
* Queue
* Linked List
* Set

For each one, write down what it is in your own words, draw a picture of it or work through the examples and code.

Make sure you clearly understand each structure and can clearly explain it to your pair (and a teacher) before moving on.


###Release 1 : Implementing a stack in Ruby.
From your reading above, you know that a stack is an abstract data structure with methods `push` to add data and `pop` to remove data and that uses the Last-In-First-Out (LIFO) rule to add and remove data. Some implementations also have a function which returns the current length of the stack. Another typical helper operation is `top` (also known as `peek`) can return the current top element of the stack without removing it.

You can visualize a stack as a stack of plates where the last plate you put on the stack is the first one you would pull off when it's time to eat dinner.

So how do we use a stack in Ruby?

Since Ruby only has an array and hash built in, you have to implement the other abstract data structures by building a class that has the correct behavior through its methods and that uses either an array or a hash to store the data.

For example, you could implement a stack by creating a class that contains an array to store the elements and uses the methods to `push` and `pop` to add and remove the data from the front of the array.

Since your Stack class is not an array, (even though it uses an array to store its data) you will also have to directly implement the needed array methods like `size` , `each`, `first`, `last` and whatever other functionality you need.

Complete the following steps:

* Copy the code in the [Basic Implementation of stack]
(https://gist.github.com/dbc-challenges/4988728) into your own stack.rb file.
* Look through the Stack class code and note how the key factors of a stack are implemented. Discuss each method with your pair so you fully understand how it works.
* Test the Stack class code by writing your own specs to create a new Stack and add and remove data from it.

  * verify there are no elements on a new stack
  * push 3 elements onto the stack and verify the length
  * since our stack is implemented on array verify we can add any type of object
  * look at all the elements in the stack by popping them off one at time
  * verify there are no elements left on the stack once it is empty
  * what happens if you try to call pop on an empty stack?

* You may have noticed that there is no method to display a particular item in the stack (ie - you can't write `puts my_stack[i]`. Why is this?

**Now it's your turn.** The stack in this example has an infinite size. This may not always be an appropriate model.

* Refactor the stack.rb code so that a stack is created with a max_size.
* Implement a full? method
* Do not allow the stack to store more than it's max_size of elements.

###Release 2 : Implement a Queue with an Array

Now it's your turn.

A queue is a data structure that utilizes the First-In-First-Out (FIFO) data model and allows data to be added to the end of the queue *enqueue* and data to be removed from the front of the queue *dequeue*.

Using the stack example as a model, write a class to implement a queue with an array.

Next, write code to instantiate your Queue class and call its methods similar to what we did with the Stack class.

Upload a gist with your Queue class and the code you wrote to show how it works.

##Optimize Your Learning

As you're coding, ask yourself...
  * Do I understand this data structure?
  * Could I explain it to my state senator in two or three sentences?

After you're done, ask yourself...
  * What functionality do I still need to implement in my abstract data structures?
  * Why doesn't Ruby have a built in stack, queue, or other abstract data structure?
  * Is there array functionality that is not implemented in my class? Does it need to be?
  * If someone asked me to implement a [Propositional Directed Acyclic Graph](http://en.wikipedia.org/wiki/Propositional_directed_acyclic_graph) using an array (or something equally scary) how would I use what I had learned in this challenge to break down that problem?

##Resources

* [Data Structures on Wikipedia](http://en.wikipedia.org/wiki/List_of_data_structures)
