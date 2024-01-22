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

Next week => weather app

11/20/23
This week I made the number from last week's app clickable. To do so, I need the number to move the user to call using `Text("Call [123-456-7890](tel:1234567890)"):`.

I worked on a weather app depending on the user's location. This means I need to get the user's location. First, I make a Manager group to organize this from other groups and inside it I create a file for location that I will import CoreLocation at. This way location element are accessible.

To change the icon of the app, I go to assets and place the right size for the different platforms. Website to resize @ [web](https://imageresizer.com/resize/download/65643f3f6adb46f12cb3489a).

Then I created a manager variable that stores CLLocationManager() aka managers app's location behavior, either the object configure, start, and stop location services. Also in apple's [developer page](https://developer.apple.com/documentation/corelocation/configuring_your_app_to_use_location_services). Published two variable locations and isLoading to false. Override init() and the manager delegate to self. Create functions one when user requests the location, what happens after(could type didupdatelocation tab), and what if an error occurs(could type didFailWithError tab).

To make a welcome page, I create another group called WelcomeView with a file called WelcomeView where this file's parent view is locationManager. This will have a VStack inside a VStack that displays a welcome message and instruction. Then make a LocationButton() after importing CoreLocationUI because LocationButton() is from the framework.

So lot of the file are overlapping and it is important to name the file before the variable for example to get the location variable in locationManger as locationManger.location.

Next week => continue weather app

11/27/23:<br>
This week, I tried to connect the app to my iPhone using the builder tool. I tried using a cable and failed. I tried downloading Xcode on my phone and that did not work.
I hwill again next time -> https://developer.apple.com/documentation/xcode/running-your-app-in-simulator-or-on-a-device.

Next I made an account on [Open Weather API](https://openweathermap.org/api).

12/4/23: <br>
Today, I integrated xcode to my GitHub account using a [YouTube tutorial](https://youtu.be/T3QPQc0LW5w?feature=shared). For future reference, I need to add my GitHub account with a token (I used a new one called xcode: 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) then when I was in the app, I went into integrate, made a new git repository and created a new repository on GitHub. I used that project's ssh on my ide so I could add it to this file. Also that was for the weather app.

Now, I am going to continue the weather app.

Using the API call for longitude and latitude, I can paste that in my new WeatherManager file and in that link, I could change specific values to variables that I made on my file.
Honestly, as I was doing this, I had a few troubles perhaps because the tutorial is from 2 years ago but I am thinking of dropping this app for now and possibly returning when I figure it out. ([Weather App](https://youtu.be/X2W9MPjrIbk?feature=shared) @ 19:01)

So decided to try something with emojis and selection with this [tutorial](https://www.youtube.com/watch?v=nqTcAzPS3oc). Quite a lot of the codes are outdated which meant I needed to do research outside the tutorial. On the [offical page](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/enumerations/) Enumerations needs to be made line by line instead of how the speaker called it all in one line. The same with how `var collection: Emoji = .🍰` did not work and I manipulated it bit and used `@State var selection: Emoji = .cake`. The final result is in [Emoji file](/Emoji).

12/11/23 <br>
This week, I am reviewing the [SwiftUI Tutorials page](https://developer.apple.com/tutorials/swiftui/creating-and-combining-views#introduction).So in my code space, I could make my page selectable and use the SwiftUI Inspector to change colors, fonts, etc. design stuff which is really cool.<br>

Another cool thing is that images can seen from different angles. I tries this with a picture I found on Pinterest. To do this, I need to have a file that will be used for that. After I have added my Pinterest image as a file, I write an Image(_:) initializer, to pass it the name of the image to display. I could use styling`.clipShape(...)` to make the image viewed as a certain shape.
To change the frame/stroke I used `Circle().stroke(.white, lineWidth: 4)
            }`.

I had a mini quiz on Swift, this is notes from the quiz.
* To declare the view's layout, do so in the body property
* To user modifier methods to configure a view: `.methodtype(.value)`

I think the SwiftIU inspector could be with used with figma to make styling faster so I could check that out next week. 

12/18/23 <br>
I am making a [macOS App](https://developer.apple.com/tutorials/swiftui/creating-a-macos-app). It seems like files download in a zip can be dragged into the project. For macOS apps, I need to add a macOS target to the project. 
Apparently like with the watchOS app, the default app structure is not needed because I could reuse the one you already have.
I could create a new custom view in the MacLandmarks group targeting macOS called LandmarkDetail to have three files called LandmarkDetail. Each serves the same purpose in the view hierarchy, but provides an experience tailored to a particular platform. New studd -> I could do commands `struct LandmarkCommands: Commands {
    var body: some Commands {
        SidebarCommands()
    }
}` with such `@focusedBinding`. 

01/01/24 <br>
I am just saving this because I thought it meant be useful later on: [Programming](https://www.youtube.com/watch?v=8Xg7E9shq0U)
There is a possible way to combine firebase with swift to complete user login according to the [youtube video](https://www.youtube.com/watch?v=QJHmhLGv-_0). To do, I can have the firebase template of a sign in copied onto xcode. There needs to be a NavigationStack so the app can easily move from the login page to the sign in page.
```
NavigationStack{
 Vstack{
  //image
  //form fields
  //sign in button
  //sign out button
 }
}
```
However, all this does not do anything yet?
How to make a profiler view page?
The template structure would have a profile image, general, and account sections. 

01/09/24<br>
Since, I will have lists of recipes and ingredients on my app, I will need to know how to make a list and navigate that using [SwiftTutorial](https://developer.apple.com/tutorials/swiftui/building-lists-and-navigation) Add landmark as a stored property of LandmarkRow. When you add the landmark property, the preview in the canvas stops working because the LandmarkRow type needs a landmark instance during initialization. nside the preview macro, add the landmark parameter to the LandmarkRow initializer, specifying the first element of the landmarks array.
Now everytime I add a new list, I will have a new landmark. Like so:
```java
#Preview("Turtle Rock") {
    LandmarkRow(landmark: landmarks[0])
}
```
The number in the brackets will differ depending on how many list I have.
When I have my desired amount of list, I can manipulate the lists. 

<!--Next week => https://edabit.com/challenges/swift#! begin on making a to-do list-->

01/16/24
import Foundation

class TodoList {
    var tasks: [String] = []

    func addTask(_ task: String) {
        tasks.append(task)
        print("Task added: \(task)")
    }

    func displayTasks() {
        if tasks.isEmpty {
            print("No tasks in the to-do list.")
        } else {
            print("To-Do List:")
            for (index, task) in tasks.enumerated() {
                print("\(index + 1). \(task)")
            }
        }
    }
}


let myTodoList = TodoList()

myTodoList.addTask("Buy groceries")
myTodoList.addTask("Finish coding assignment")
myTodoList.addTask("Go for a run")

myTodoList.displayTasks()

<!--Then I began on making a to-do list app. -->
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
