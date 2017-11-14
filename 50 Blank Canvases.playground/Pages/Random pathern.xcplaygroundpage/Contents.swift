//: [Next](@next)
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

// Create canvas x
let canvas = Canvas(width: 500 , height: 500)

/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// Replace this comment with your first comment – what is the goal of the code you're about to write?
canvas.fillColor=Color.white
for x in stride(from: 25, through: 475, by: 50) {
    for y in stride(from: 475, through: 25, by: -50) {
        canvas.drawEllipse(centreX: x, centreY: y, width: 25, height: 25, borderWidth: 10)
        
    }
}

//Black circles
canvas.fillColor = Color.black
for x in stride(from: 30, through: 475, by: 50) {
    for y in stride(from: 485, through: 25, by: -50) {
        let bo = random(from: 1, toButNotIncluding: 5)
        if bo == 1 {
            canvas.translate(byX: 2, byY: 0)
            if bo == 2 {
                canvas.translate(byX: -2, byY: 0)
                    if bo == 3{
                        canvas.translate(byX: 0, byY: 2)
                            if bo == 4{
                                canvas.translate(byX: 0, byY: -2)
                        }
                }
            }
        }

        canvas.drawEllipse(centreX: x, centreY: y, width: 25, height: 25, borderWidth: 10)

        
    }
}


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


