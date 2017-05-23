//: [Previous](@previous)
//: # Scenario 2
//: ## Your goal
//: Reproduce this image:
//:
//: ![The Police](ThePolice.png "The Police")
/*:
 ## Notes:
 * you will work on a canvas that is 400 pixels wide by 600 pixels high
 * strongly recommend that you make a plan [using this storyboard template](http://russellgordon.ca/rsgc/2016-17/ics2o/Storyboard%20Planning%20Template.pdf) (I have hard copies available if you are in class)
 * you can use the Digital Color Meter program to obtain an RGB color value (Command-Shift-C), then [go to this site](http://rgb.to/), paste the result, and use the HSB values provided.
 * efficiency counts: employ loops and/or function(s) and/or conditional statements to write compact code
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![timeline](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 400, height: 600)
canvas.drawShapesWithBorders = false

// Color constants
let offWhite = Color(hue: 86, saturation: 6, brightness: 88, alpha: 100)
let red = Color(hue: 350, saturation: 100, brightness: 80, alpha: 75)
let blue = Color(hue: 196, saturation: 100, brightness: 75, alpha: 50)
let yellow = Color(hue: 49, saturation: 96, brightness: 87, alpha: 100)

//creating colored canvas
canvas.fillColor = offWhite
canvas.drawRectangle(centreX: 200, centreY: 300, width: 400, height: 600)

// Your code below...

//drawing circles
var w = 3
var z = 0
var m = 1
for y in stride(from: 580, to: 200, by: -36){
    for x in stride(from: 380, to: 5, by: -36){
        if w > 33 {
            w = 33 }
         z += 1
        canvas.fillColor = yellow
        canvas.drawEllipse(centreX: x+3, centreY: y - 5, width: w, height: w)
        canvas.fillColor = red
        canvas.drawEllipse(centreX: x-3, centreY: y - 5, width: w, height: w)
        canvas.fillColor = blue
        canvas.drawEllipse(centreX: x, centreY: y, width: w, height: w)
        if z / 11 == m{
            w = 3 + (3*m)
        } else {
            w += 3 }
        
    }
    
    m += 1
}
//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
