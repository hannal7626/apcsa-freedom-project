# Entry 5
##### 05/01/24

Content: I have learning my tool through tutorials on youtube and freecodecamp and the [swift website](https://developer.apple.com/documentation/tvml/carousel/). I tried to play around with a model extension in below to do so. 
``` java
extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name: "Dragon fruit drink",
            image: "N/A",
            ingredients: "1 Apple, 1 Dragon fruit, ½ Mango, 1 cup, Coconut Milk (optional), and Honey",
            directions: "1. Cut up the fruits 2. Blend the honey, apple, dragon fruit, and mango until liquid 3.Pour into a cup and serve!",
            category: "drinks"),
//            datePublished: "String",
//            url: String)
        Recipe(
            name: "Fermented lemon drink",
            image: "N/A",
            ingredients: "Lemons (5 is enough),Honey, Sugar, and Warm water",
            directions: "1. Cut up the lemons. 2. Boil ¼ cup of sugar with ¼ cup of honey and ¼ cup of water. Wait until melted. 3. Put the cut out lemons in a container and add the boiled liquid. 4. You can scoop out the container and add warm water to drink. Otherwise, ferment the drink in the fridge for as long as 1 month!",
            category: "drinks")
    ]
}
```

My team and I finished out MVP this week. We have a home page with all the recipes separated into categories with clickable links. The below is the a part of our code for our alferdo chick recipe.

```java
NavigationSplitView {
            List {
                // Meals
                Text("Meals")
                    .bold(true)
                

                HStack {
                    NavigationLink {
                        recipe_chicken_alfredo()
                    } label: {
                        Image("chicken-alfredo")
                            .resizable()
                            .frame(width: 100, height: 100)
                        VStack {
                            Text(meals[0][0])
                                .bold(true)
                            Text(meals[0][1])
                        }
                    }
                }
```

Our next steps would be the Beyond MVP part. We have a few ideas such as to create sections for the different sub categories, generates recipes that match to ingredients (We have to manually put in recipes unless we find a faster way to do this) with ingredient icons, allow the user to add a recipe on the website, and have tab bars for different sections. In addition include David' arduino in the app. 

Engineering Development Progress (EDP): We are in step 6 and 7. We are testing and improve the prototype as needed. Currently, our app works but we can add more freatures to advanced our app. We could also launch our app to the public after we polish.

Skills: I am practicing key skills such as how to read and communication. While using the swift documentation, I use my skill of reading to comprehend information and use them. Working in a team require active communication to know where everyone is at in order to build a project.

[Previous](entry04.md) | [Next](entry06.md)

[Home](../README.md)
