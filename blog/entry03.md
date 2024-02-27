# Entry 3
##### 02/11/24

Content:
As I have been tinkering to see what I can utilize in my project. I could use similarities to the emoji app to make buttons that the user may press on my app when they want to access a recipe or when the user wants to add a new recipe to the app that everyone else can view. To enable that the user had a easy time with navigation, a navigation controller could be implemented, facilitating smooth transitions between various screens. I will have the names, ingredients, and instructions, with options for storage including Core Data or a local database. 

<!-- tinker-->
Today, I integrated xcode to my GitHub account using a YouTube tutorial. For future reference, I need to add my GitHub account with a token (I used a new one called xcode: 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) then when I was in the app, I went into integrate, made a new git repository and created a new repository on GitHub. I used that project's ssh on my ide so I could add it to this file. Also that was for the weather app.

Now, I am going to continue the weather app.

Using the API call for longitude and latitude, I can paste that in my new WeatherManager file and in that link, I could change specific values to variables that I made on my file. Honestly, as I was doing this, I had a few troubles perhaps because the tutorial is from 2 years ago but I am thinking of dropping this app for now and possibly returning when I figure it out. (Weather App @ 19:01)

So decided to try something with emojis and selection with this tutorial. Quite a lot of the codes are outdated which meant I needed to do research outside the tutorial. On the offical page Enumerations needs to be made line by line instead of how the speaker called it all in one line. The same with how var collection: Emoji = .🍰 did not work and I manipulated it bit and used @State var selection: Emoji = .cake. The final result is in Emoji file.

Today, I integrated xcode to my GitHub account using a YouTube tutorial. For future reference, I need to add my GitHub account with a token (I used a new one called xcode: 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) then when I was in the app, I went into integrate, made a new git repository and created a new repository on GitHub. I used that project's ssh on my ide so I could add it to this file. Also that was for the weather app.

Now, I am going to continue the weather app.

Using the API call for longitude and latitude, I can paste that in my new WeatherManager file and in that link, I could change specific values to variables that I made on my file. Honestly, as I was doing this, I had a few troubles perhaps because the tutorial is from 2 years ago but I am thinking of dropping this app for now and possibly returning when I figure it out. (Weather App @ 19:01)

So decided to try something with emojis and selection with this tutorial. Quite a lot of the codes are outdated which meant I needed to do research outside the tutorial. On the offical page Enumerations needs to be made line by line instead of how the speaker called it all in one line. The same with how var collection: Emoji = .🍰 did not work and I manipulated it bit and used @State var selection: Emoji = .cake. The final result is in Emoji file.

<!--12/11/23-->
This week, I am reviewing the SwiftUI Tutorials page.So in my code space, I could make my page selectable and use
This week, I am reviewing the SwiftUI Tutorials page.So in my code space, I could make my page selectable and usethe SwiftUI Inspector to change colors, fonts, etc. design stuff which is really cool.

Another cool thing is that images can seen from different angles. I tries this with a picture I found on Pinterest. To do this, I need to have a file that will be used for that. After I have added my Pinterest image as a file, I write an Image(_:) initializer, to pass it the name of the image to display. I could use styling.clipShape(...) to make the image viewed as a certain shape. To change the frame/stroke I used Circle().stroke(.white, lineWidth: 4) }.

I had a mini quiz on Swift, this is notes from the quiz.

To declare the view's layout, do so in the body property
To user modifier methods to configure a view: .methodtype(.value)
I think the SwiftIU inspector could be with used with figma to make styling faster so I could check that out next week.

<!--12/18/23-->
I am making a macOS App. It seems like files download in a zip can be dragged into the project. For macOS apps, I need to add a macOS target to the project. Apparently like with the watchOS app, the default app structure is not needed because I could reuse the one you already have. I could create a new custom view in the MacLandmarks group targeting macOS called LandmarkDetail to have three files called LandmarkDetail. Each serves the same purpose in the view hierarchy, but provides an experience tailored to a particular platform. New studd -> I could do commands struct LandmarkCommands: Commands { var body: some Commands { SidebarCommands() } } with such @focusedBinding.

<!--01/01/24-->
I am just saving this because I thought it meant be useful later on: Programming There is a possible way to combine firebase with swift to complete user login according to the youtube video. To do, I can have the firebase template of a sign in copied onto xcode. There needs to be a NavigationStack so the app can easily move from the login page to the sign in page.
```java
NavigationStack{
 Vstack{
  //image
  //form fields
  //sign in button
  //sign out button
 }
}
```
However, all this does not do anything yet? How to make a profiler view page? The template structure would have a profile image, general, and account sections.

<!--01/09/24-->
Since, I will have lists of recipes and ingredients on my app, I will need to know how to make a list and navigate that using SwiftTutorial Add landmark as a stored property of LandmarkRow. When you add the landmark property, the preview in the canvas stops working because the LandmarkRow type needs a landmark instance during initialization. nside the preview macro, add the landmark parameter to the LandmarkRow initializer, specifying the first element of the landmarks array. Now everytime I add a new list, I will have a new landmark. Like so:

#Preview("Turtle Rock") {
    LandmarkRow(landmark: landmarks[0])
}
The number in the brackets will differ depending on how many list I have. When I have my desired amount of list, I can manipulate the lists.

I plan to figure how to cooperate in xcode whether that is through github or on the xcode app or seperate ide platform. 

[Previous](entry02.md) | [Next](entry04.md)

[Home](../README.md)
