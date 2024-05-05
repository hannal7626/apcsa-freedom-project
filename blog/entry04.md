# Entry 4
##### 3/17/24

Content:
I have been trying to create structure that I will need for my app as my team and I navigate around to connect xcode to github. 

I want to make a carousel for my recipe pictures so I am learnt to make that. I found a [youtube video](https://www.youtube.com/watch?v=DgTPWYM5Hm4&list=TLPQMTEwMzIwMjQuo8rfWp6jtg&index=5) and the format provided by the [swift website](https://developer.apple.com/documentation/tvml/carousel/) to learn. The format part was pretty easy. The challenge was figuring out how to use the toolbar and match pictures to identified variables. However, using the resources that I found I was able to solve the issue. 

``` java
<carousel>
    <section>
        <lockup>
            <img src="path to images on your server/Car_Movie_453x255_C.png" width="453" height="255" />
            <title>Scene 1</title>
        </lockup>
        <lockup>
            <img src="path to images on your server/Car_Movie_500x600.png" width="500" height="600" />
            <title>Scene 2</title>
        </lockup>
        <lockup>
            <img src="path to images on your server/Car_Movie_308x308_B.png" width="308" height="308" />
            <title>Scene 3</title>
        </lockup>
    </section>
</carousel>
```

On the other hand, I practiced to make sections on an app using the `List` format. 
```
List {
            Section(header: Text("Types of Food")) {
               //Blank
            }

            Section(header: Text("Recipe Page ")) {
                //Blank
            }
        }
```

As for our MVP, we have successfully connected xcode to github and our next steps will be confirming that the code is updated on github when pushed and then sent to another user when they pull. Then we will edit the app to match the goals on our MVP as we are a little behind on that. 

Engineering Development Progress (EDP):
We are currently in step 5 of the EDP which is creating the most promising solution. We are preparing our app that will be presented at the elevator pitch and to our classmates. 

Skills:
I am practicing key skills such as embracing failure and communication. My team and I struggled to work with xcode and github but, through trail and error, and even failure, we managed through. Everyone had different schedules so, we kept a groupchat to communicate and see who is working on what. 

[Previous](entry03.md) | [Next](entry05.md)

[Home](../README.md)
