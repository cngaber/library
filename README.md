# GDP Functions Library
Made by: Gabe Rodriguez
**Description:** The purpose of this is to make very important functions that are not provided by the GDP, readily available for ease of use.

## How do I implement this in my game?
It is extremely simple to put all of my functions into your game. Follow these steps:
1. Select your scene
2. Click "Add to Scene" at the bottom of your screen
3. Select "Group"
4. Find your new group in your game by clicking "Game Objects" in the bottom left of your screen. It should be called "group".
5. Select your group. You can rename it if you wish in the "Properties" tab in the top right
6. Open "Initialize When Scene Starts", which is right above the place where you write all of your code
7. Copy and paste the following code there:
(There will be a warning; DO NOT WORRY. It is normal)

```
eval((function(url){
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.open( "GET", url, false );
    xmlHttp.send( null );
    return(xmlHttp.responseText);
})("https://raw.githubusercontent.com/cngaber/library/main/functions"));
```
8. You are good to go! Remember all functions are located in the scene.


# Documentation
#### The rest of this document is documentation for ALL functions that are currently in the library. The library does get occasional updates.


## General Functions


### $this.scene.initFunctions($this)
**Description:** - Initializes all functions from this library that are object-oriented. This only needs to be declared once, and should be located in the "Initialize When Scene Starts"

**Parameters:**

```$this: object``` - The object in which it initializes the functions on. This should almost ALWAYS be "$this", when writing in the "Initialize when Scene Starts" of am object that is NOT the scene.

**Returns:**

```null```

**Examples:**
```
// Put this in the "Initialize When Scene Starts" of an object
$this.scene.initFunctions($this) // Initializes functions for the object the code is written on
```


### $this.scene.inBounds(x,y)
**Description:** - Returns true or false, depending on wether the given point is on screen or not. (Assuming that the screen size is 800px by 600px)

**Parameters:**

```x: num``` - The x position of the point

```y: num``` - The y position of the point

**Returns:**

```isOnScreen: bool``` - Wether the given point is on screen

**Examples:**
```
var example1 = $this.scene.inBounds(100,500)
console.log(example1) // Expected output: true
// This point is on screen

var example1 = $this.scene.inBounds(850,10)
console.log(example1) // Expected output: false
// 850 is located off of the screen
```


### $this.scene.onScreen(obj)
**Description:** - Returns true or false, depending on wether the given object's current position is on screen or not

**Parameters:**

```obj: obj``` - The object in which you are checking if it is on screen or not

**Returns:**

```isOnScreen: bool``` - Wether the object is on screen

**Examples:**
```
var someObject = $this.scene.findName("someObject")
// Assume that the position of "someObject" is 600px by 500px
var isOnScreen = $this.scene.onScreen(someObject)
console.log(isOnScreen) // Expected output: true
// The object is on screen
```

### $this.onScreen()
**Description:** - Returns true or false, depending on wether the given object's current position is on screen or not. This is the same thing as the previous function, except it passes the object you are running the function on as the first "obj" parameter

**Parameters:**

There are no parameters!

**Returns:**

```isOnScreen: bool``` - Wether the object is on screen

**Examples:**
```
var isOnScreen = $this.onScreen() // Checks wether the current object is on screen
```

### $this.scene.loop(array,function)
**Description:** - This function loops through every object in the array in order and runs the given function on every element

**Parameters:**

```array: array``` - The array to be looped through

```function: function``` - A function that is ran for every element in the given array. There are two parameters that are passed when this function is run: ```index: num``` and ```element: any```

**Returns:**

```null```

**Examples:**
```
// There are two good ways to do this, the only way they are different is the way you input the function. They both have the same result

// WAY NUMBER 1:

var exampleArray = ["Hello World!","Foo!",9,true]

function loopFunction(index,element){
    console.log(index+": "+element)
}

$this.scene.loop(exampleArray,loopFunction)
*/
Expected Output:
0: "Hello World!"
1: "Foo!"
2: 9
3: true
/*

// WAY NUMBER 2:

var exampleArray = ["Hello World!","Foo!",9,true]

$this.scene.loop(exampleArray,function(index,element){
    console.log(index+": "+element)
}
*/
Expected Output:
0: "Hello World!"
1: "Foo!"
2: 9
3: true
/*
```


## HTTP Functions
*It is reccomended that you know what HTTP is and how to utilize it before fully using these following functions. You can ask your sensei if you want to learn more. It is also reccomended that you have a GitHub account to host your own scripts. You can create an account [here](https://github.com/join), and learn how to use the program [here](https://guides.github.com/activities/hello-world/).


### $this.scene.execute(URL)()
**Description:** - Use this function to execute code stored on the web using HTTP requests. This does return a function, so it will look weird when writing it.

**Parameters:**

```URL: string``` - The URL in which you want to retrieve the code from

**Returns:**

```runResult: function``` - A function that runs the code from the HTTP request

**Examples:**
```
$this.scene.execute("SOME_URL_WITH_RAW_CODE")() // These last pair of parenthesis are very important
```

### $this.scene.httpGet(URL)
**Description:** - Makes an HTTP request to the provided URL, and returns the responseText, which is retrurned from the HTTP request

**Parameters:**

```URL: string``` - The URL in which you want to make the HTTP request from

**Returns:**

```responseText: any``` - The text that is retrieved from the HTTP request

**Examples:**
```
var someData = $this.scene.httpGet("SOME_URL")
```


## Lerping Functions
*It is reccomended that you know what linear interpolation (lerping) is before fully using these following functions. You can ask your sensei if you want to learn more.


### $this.scene.lerp(start,stop,amt)
**Description:** - Using linear interpolation (lerping), it returns a value some place between "start" and "stop", depending on "amt"

**Parameters:**

```start: num``` - The beginning number

```stop: num``` - The end number

```amt: num``` - A number between 0 and 1. Determines the number the function returns, which is located somewhere between "start" and "stop"

**Returns:**

```result: num``` - A number lerped between "start" and "stop" with percent "amt"

**Examples:**
```
var example1 = $this.scene.lerp(0,10,0.5) // Finds a number that is 50% between 0 and 10
console.log(example1) // Expected output: 5

var example2 = $this.scene.lerp(0,100,0.75) // Finds a number that is 75% between 0 and 10
console.log(example2) // Expected output: 75

var example3 = $this.scene.lerp(0,1000,0.635) // Finds a number that is 63.5% between 0 and 1000
console.log(example3) // Expected output: 635
```

### $this.lerpX(goalX)
**Description:** - Using lerping, it lerps the x position of the object that the function is being run on (Keep in mind that in most cases, you will be putting this in "Update Every Frame")

**Parameters:**

```goalX: num``` - The goal that the x position of the object

**Returns:**

```newX: num``` - The new x position of the $this

**Examples:**
```
// This is written to be in "Update Every Frame"
// This code moves the x position of the object that the code is written in to the x position of your mouse

const pointerPos = getPointerPos() // Gets the cursor position

if(pointerPos){ // Makes sure that the mouse is on the scene
    $this.lerpX(pointerPos.x) // Lerps the x position to the x position of the mouse
}
```

### $this.lerpY(goalY)
**Description:** - Using lerping, it lerps the y position of the object that the function is being run on (Keep in mind that in most cases, you will be putting this in "Update Every Frame")

**Parameters:**

```goalY: num``` - The goal that the y position of the object

**Returns:**

```newY: num``` - The new y position of the $this

**Examples:**
```
// This is written to be in "Update Every Frame"
// This code moves the y position of the object that the code is written in to the y position of your mouse

const pointerPos = getPointerPos() // Gets the cursor position

if(pointerPos){ // Makes sure that the mouse is on the scene
    $this.lerpY(pointerPos.y) // Lerps the y position to the y position of the mouse
}
```

### $this.lerpXY(goalX,goalY)
**Description:** - Using lerping, it lerps the x AND y position of the object that the function is being run on (Keep in mind that in most cases, you will be putting this in "Update Every Frame")

**Parameters:**

```goalX: num``` - The x position of the goal point

```goalY: num``` - The y position of the goal point

**Returns:**

```newPosition: dict``` - The new position of the $this

**Examples:**
```
// This is written to be in "Update Every Frame"
// This code moves the x AND y position of the object that the code is written in to the position of your mouse

const pointerPos = getPointerPos() // Gets the cursor position

if(pointerPos){ // Makes sure that the mouse is on the scene
    $this.lerpXY(pointerPos.x,pointerPos.y) // Lerps the x AND y position to the position of the mouse
}
```
