# Tool Learning Log

Tool: **[Swift](https://www.swift.org)**

Project: **Cooking App**

---

10/29/23:
* Swift is ran on Xcode (masos version)
* Swift types are grouped in 2 categories: value types and reference types.
  * Value type => ex. structures, enumerations, and tuples are all value types. When you asign a value to a function or method, it is creating a copy.
  * Reference type => ex. classes, actors, and closures are all reference types. It is  a reference with a shared instance that is assigned or passed in.

[The Basics | Documentation](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/thebasics)<br>
This is the [document](https://docs.google.com/document/d/117mnhurpPyfvKrfNXuWEKhi8vDd9t-bjswmGg0kDv04/edit?usp=sharing) that I will be using to take notes.

11/5/23: <br>
Today, I will be trying all the new components from the basic document following a [youtube crash course](https://www.youtube.com/watch?v=8Xg7E9shq0U&list=TLPQMDYxMTIwMjNO9FoPe9_46A&index=3)- 29:11 and trying to build a mini ios app.

Before anything, I need to open the Xcode app. Then, create a new file -> workspace -> blank playground. I had an aha moment when I moved my files around in my finer folder. It caused an error because my Playground was inside of my swift folder that stored my main frame. 
* `import Foundation` = /creates all the necessary components of swift

``` swift
let myName = "Vandad" //cannot be assigned again
var yourName = "Rosa" //can be assigned again
//myName = yourName -> error
```
So not only can `let` not be assigned again, it is also immutable. If below was let instead of var.
``` swift
var names = [ 
    myName,
    yourName
]
names.append("Bar")
names.append("Baz")
```

This following code is a bit confusing for me so I will explain it here:
``` swift
let foo = "Foo"
var foo2 = foo
foo2 = "Foo 2"
foo
foo2
```
This code does not over the previous. `foo` will return "Foo" and `foo2` will return "Foo 2" but does not change the value of `foo`. But, on line 2, a new instance is created because it is set to a previous value. 

* Wow moment -> NSMutableArray- like  casting in Java

```swift
let oldArray = NSMutableArray(
    array: [
        "Foo",
        "Bar"
    ]
)
oldArray.add("Baz")
var newArray = oldArray
newArray.add("Quz")
oldArray //"Foo, "Bar", "Baz", "Quz"
newArray //"Foo, "Bar", "Baz", "Quz"
```
The array part makes the unmmutable `let` mutable. Next "Baz" is added to the array. Then newarray is now an instance of oldarray so when "Quz" is added to newarray, oldarray accepts the same thing.

``` swift
let someNames = NSMutableArray(
    array: [
        "Foo",
        "Bar"
    ]
)
func changeTheArray(_ array: NSArray){//NSArray is a subclass of NSMutableArray, anything from NSMutableArray can be downgraded to NSArray
     let copy = array as! NSMutableArray //assigning, setting the data type to mutable and assuming The speaker does not recommend this type of coding
    copy.add("Baz")
}
changeTheArray(someNames)
someNames
```
I think this is the same as the last two examples. It is a different way of change what value the `let` or `var` holds. 

<b>Time to build...</b>
Before, I created a workspace and now I created an app. With the app, there is code called ContentView. 
* For `.font` 144 is the point system which looks nice and big across all platforms. (similar to CSS)
The model can be seen on the tinker section of my doc. 

Next week, I will take notes on Operators and try another ios example. Along the way, I will see what I can do with the information I learn. So far, the var and let are pretty self-explanatory. 

11/11/23 <br>
[Hanna Swift](https://docs.google.com/document/d/117mnhurpPyfvKrfNXuWEKhi8vDd9t-bjswmGg0kDv04/edit#bookmark=id.vcqcyef7lr41)

11/19/23 <br>
Function with parameter is made with : and callded with :.
``` swift
func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}
print(greetAgain(person: "Anna"))
// Prints "Hello again, Anna!"
```
For functions without parameter...
``` swift
func sayHelloWorld() -> String {
    return "hello, world"
}
print(sayHelloWorld())
// Prints "hello, world"
```
Then ones with multiple parameter are written like js and java => seperated by comma.

[Closures](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/closures) are group code that executes together, without creating a named function. Closures can capture and store references to any constants and variables from the context in which they’re defined.

I followed a tutorial on [youtube](https://www.youtube.com/watch?v=SEoOjSiTIB4&list=PLsCTahQzr8wKUYcMbUMvU5AKdkaLYKweZ&index=4) and built a [contact screen](https://docs.google.com/document/d/117mnhurpPyfvKrfNXuWEKhi8vDd9t-bjswmGg0kDv04/edit#bookmark=id.oxmicurglwjn). (=> make the number work next)

Next week => https://edabit.com/challenges/swift#! begin on making a to-do list

<!--X/X/X:
* Text
Look for tutorials 
- written
- video 

Coding => 
- try what you see in the doc/tutorial
- change things! tinker!
- make your own small examples
-->

<!-- 
* Links you used today (websites, videos, etc)
* Things you tried, progress you made, etc
* Challenges, a-ha moments, etc
* Questions you still have
* What you're going to try next
-->
