//: [Previous](@previous) / [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 200, height: 100)

// Generate 200 random numbers between 1 and 100
for _ in stride(from: 1, through: 200, by: 1) {
    // Generate a height
    _ = random(from: 1, toButNotIncluding: 101)
    // Draw a line
    //canvas.drawLine(fromX: x, fromY: 0, toX: x, toY: y)
}

// Generate Perlin noise (it's a random number that's guaranteed to be different than the last random number but... close to the previous number)
let p = PerlinGenerator() // Gives us a generator to usebe
// Get a variable to track position in Perlin spacebut
var position = 0.0
let increment = 0.9 // how fast to move in Perlin space
// Loop 200 times
for x in stride(from: 0, through: 200, by: 1) {
    
    // Move through Perlin space
    position += increment // increment operator (add to prior value)
    
    // Get a random value from Perlin space!
    // They always range between -1 and 1
    // Returns a double (a decimal)
    let value = p.perlinNoise(x: position)
    
    // Convert the result into a value between 1 and 100
    let i = map(value: value, fromLower: -1, fromUpper: 1, toLower: 0, toUpper: 100)
    
    // Change the line colour
    canvas.lineColor = Color(hue: Int(i) + 60, saturation: 80, brightness: 90, alpha: 100)
    
    // Draw a line using this value
    canvas.drawLine(fromX: x, fromY: 0, toX: x, toY: Int(i))
    
}

// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView
// Create canvas
let Canvas = Canvas(width: 400, height: 300)

/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// Replace this comment with your first comment – what is the goal of the code you're about to write?



/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

