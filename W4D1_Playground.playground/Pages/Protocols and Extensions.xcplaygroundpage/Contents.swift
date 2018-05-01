//: [Previous](@previous)
/*:
 ## Protocols
 Protocols are a defined contract or blueprint that a class, struct or enum must follow.
 */
/*:
 Here we define a 'ShapeProtocol' where anything that conforms to it must provide a property of number of sides and a function called 'shapeDescription'
 */
protocol ShapeProtocol {
    var numberOfSides: Int { get set }
    var colour: String { get set }
    init (colour: String)
    func shapeDescription()
    func shapeArea()
}

/*:
 This 'Square' class conforms to the 'ShapeProtocol' and defines the number of sides for this shape and it has the shapeDescription method inside.
 */
class Square: ShapeProtocol {
    
    var numberOfSides: Int
    var colour: String
    
    init(){
        self.numberOfSides = 4
        self.colour = "blue"
    }
    
    required init(colour: String) {
        self.numberOfSides = 4
        self.colour = colour
    }
    
    func shapeDescription() {
        
        print("This is a square")
    }
    func shapeArea() {
        print("The area is:")
    }
}

/*:
 - Experiment:
 Add a new function in our 'ShapeProtocol' that should calculate the area of its shape. Make sure you implement it in our 'Square' class as well.
 */
// 👍
/*:
 - Experiment:
 Add a new property in our 'ShapeProtocol' of type String that indicates the colour of this shape.
 */
// 👍
/*:
 - Experiment:
 We can also declare a custom initializer within our 'ShapeProtocol' that any class must have present. Create an initializer that takes in a colour as a parameter.
 */
// 👍
/*:
 ## Extensions
 Extensions are a way to add additional functions to an existing class, struct or enum.
 \
 For example, I can extend the `'Double'` class to add a function I may use very often such as squaring a number. ie: 4*4 = 16
 
 - Note:
 Extensions are like categories from Objective-C. Unlike Objective-C categories, Swift extensions do not have names.
 */

// This is declaring an extension on the Double class
extension Double {
    
    // This 'square' function takes its own value and multiples it by itself, then returns the new value
    func square() -> Double {
        
        return self * self
    }
}

var myDoubleValue = 5.0
var mySquaredDoubleValue = myDoubleValue.square()

/*:
 - Experiment:
 Try adding the 'square' function to the `Float` type
 */
// This is declaring an extension on the Float class
extension Float {
    
    // This 'square' function takes its own value and multiples it by itself, then returns the new value
    func square() -> Float {
        
        return self * self
    }
}
var myFloatValue: Float = 1.1
var mySquaredFloatValue = myFloatValue.square()
/*:
 We are going to add a few extensions to several classes that you could potentially use for your future projects to make things more convenient.
 */
/*:
 - Callout(Challenge):
 Create an extension on UIColor that converts hex represented colours to a UIColor to use. ex: #FFFFFF would give a UIColor of white (Hint: You can google the algorithm on how to convert hex values to a UIColor)
 */
import UIKit
extension UIColor {
    func colourFromHex(hex: String) -> UIColor? {
        switch hex {
        case "#FFFFFF":
            return UIColor.white
        case "#000000":
            return UIColor.black
        case "#0000FF":
            return UIColor.blue
        case "#A52A2A":
            return UIColor.brown
        case "#00FFFF":
            return UIColor.cyan
        case "#A9A9A9":
            return UIColor.darkGray
        case "#808080":
            return UIColor.gray
        case "#008000":
            return UIColor.green
        case "#D3D3D3":
            return UIColor.lightGray
        case "#FF00FF":
            return UIColor.magenta
        case "#FFA500":
            return UIColor.orange
        case "#800080":
            return UIColor.purple
        case "#FF0000":
            return UIColor.red
        case "#FFFF00":
            return UIColor.yellow
        default:
            return nil
        }
    }
}
var myColour = UIColor.white.colourFromHex(hex: "#FFFFFF")

/*:
 - Callout(Challenge):
 Create an extension on String that checks if an email address has a valid format. You can make the rules as strict or as loose as you'd like. Rules can include verifying there are no spaces, there is a '@' present, etc.
 */
extension String {
    func isValidEmailFormat() -> Bool {
        if (self.contains(" ")) {
            return false
        } else if (self.contains("@") && self.contains(".")) {
            return true
        } else {
            return false
        }
    }
}
let email1 = "bob@gmail.com"
let email2 = "bob @gmail.com"
let isEmail = email1.isValidEmailFormat()

/*:
 - Callout(Challenge):
 Create an extension on `Double` to add a function that converts the number of seconds into minutes and another function to hours. ex: Given 900 seconds, the minutes returned will be 15 minutes, and the hours returned would be 0.25 hours.
 */
extension Double {
    func convertSecondsToMinutes() -> Double {
        return self/60
    }
    func convertSecondsToHours() -> Double {
        return self/360
    }
}
let seconds = 45.5
let minutes = seconds.convertSecondsToMinutes()
let hours = seconds.convertSecondsToHours()
print(hours)

//: [Next](@next)
