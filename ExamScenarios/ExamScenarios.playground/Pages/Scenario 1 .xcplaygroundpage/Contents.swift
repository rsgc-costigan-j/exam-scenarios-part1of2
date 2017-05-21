//: [Previous](@previous) / [Next](@next)
//: # Scenario 1
//: ## Your goal
//: Reproduce this image:
//:
//: ![Dead Kennedys](DeadKennedys.png "Dead Kennedys")
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
//setting canvas color
canvas.fillColor = Color(hue: 25, saturation: 87, brightness: 96, alpha: 100)
canvas.drawShapesWithBorders = false
canvas.drawRectangle(centreX: 200, centreY: 300, width: 400, height: 600)

//rotating canvas
canvas.translate(byX: 200, byY: 300)
canvas.rotate(by: 45)
canvas.drawAxes()

var h = 0
var s = 0
var b = 0
var c = 1

for y in stride(from: 60, to: -300, by: -99){
    
    for x in stride(from: 250, to: -100, by: -99){
        canvas.fillColor = Color(hue: h, saturation: s, brightness: b, alpha: 100)
        canvas.drawRectangle(centreX: x, centreY: y, width: 100, height: 100)
        
        if c == 1 || c == 4  || c == 10{
            h = 21
            s = 89
            b = 22
        } else if c == 2 || c == 5 || c == 7 || c == 10 || c == 8{
            s = 90
            b = 47
        } else if c == 3 || c == 6 || c == 9 {
            s = 90
            b = 70
        }
        c += 1
        
    }
}



//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
