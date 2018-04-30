//: [Previous](@previous)
class ShapeClass {
    var numberOfSides = 0
    var name = "shape name"
    func description() -> String {
        return "A shape called \(name) with \(numberOfSides) sides."
    }
}
/*:
 The struct version looks the same except we use the keyword `'struct'`.
 */
struct ShapeStruct {
    var numberOfSides = 0
    func description() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

/*:
 - Experiment:
 Update the ShapeClass and add a new property 'name'. Also, update the description method to include the name when it prints.
 */
// see above
/*:
 - Experiment:
 Try creating an instance of the ShapeClass. We can do this by writing the class name then putting parentheses '()' after the class name. Assign it to a declared variable and try setting the variables 'numberofSides' and 'name' and calling the 'description' method.
 */
var shape = ShapeClass()
shape.name = "square"
shape.numberOfSides = 4
print(shape.description())
/*:
 Our ShapeClass is looking good but it is missing something important. We need an initializer to set up the class when an instance is created. We are going to create another class very similar to ShapeClass but this time, we will add the initializer.
 */

class NamedShapeClass {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    init(name: String, numberOfSides: Int) {
        self.name = name
        self.numberOfSides = numberOfSides
    }
    func description() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

/*:
 - Experiment:
 Add another initializer to our 'NamedShapeClass'. Have this initializer take in 'name' and 'numberOfSides' as its parameters. Then test it out by creating an instance of 'NamedShapeClass'.
 */
var namedShape = NamedShapeClass(name: "circle")
print(namedShape.description())
var otherShape = NamedShapeClass(name: "triangle", numberOfSides: 3)
print(otherShape.description())
/*:
 - Callout(Challenge):
 Let's make a new class named 'Square' and we will subclass 'NamedShapeClass'. This is already done for you below to showcase how to subclass.
 - add a new property for side length
 - create a new initializer that takes in side length and a name as parameters
 - create a new method called 'area' that calculates the area of the square ( side-length * side-length )
 - override the description method and print out a new description to indicate the side-length and number of sides for this square
 - test all your functions after you've finished
 */

class Square : NamedShapeClass {
    var sideLength: Int
    
    init(name: String, sideLength: Int) {
        self.sideLength = sideLength
        super.init(name: name)
    }
    
    func area() -> Int {
        return self.sideLength*self.sideLength
    }
    
    override func description() -> String {
        return("A \(name) with \(numberOfSides) sides and sidelength: \(sideLength)")
    }
}

/*:
 - Callout(Challenge):
 Follow the instructions to create your own Car class.
 
 - Create a class for Car. Add a `String` property called model.
 - Create a function called drive. Inside the function include a print statement that prints the model of the car you are driving.
 - Create a custom initalizer that requires an `String model` as an input.
 - Subclass Car and make a Toyota Class. `Override init()` and set the model to "Prius" inside the method.

 To Test:
 - Add an instance of a Car called nissan. Initialize it with model named "Rogue"
 - Add the drive() method to make sure it prints out "Rogue"
 - Add an instance of Toyota called toyota. Initialize it.
 - Add the drive() method to make sure it prints out "Prius"
 */
class Car {
    var model: String
    
    init(model: String) {
        self.model = model
    }
    
    func drive() {
        print(model)
    }
}

var nissan = Car(model: "Rogue")
nissan.drive()

class Toyota : Car {
    
    init() {
        super.init(model: "Prius")
    }
}

var toyota = Toyota()
toyota.drive()
/*:
 - Callout(Challenge):
 Earlier, we mentioned that classes are passed by reference and structs are passed by value. Let's try to clarify this with an example.
 \
First, create a Person class with a name property and a custom initializer that takes a name as its parameter, then uncomment 'Section A'. What do think will happen? What are the results?
\
Now create the same Person class but convert it to a struct. Uncomment 'Section B'. What do think will happen? What are the results?
*/
// Implement Person class under here!
//class Person {
//    var name = ""
//
//    init(name: String) {
//        self.name = name
//    }
//}

// Section A
//var firstPersonObject = Person(name: "Joe")
//var secondPersonObject = firstPersonObject
//secondPersonObject.name = "Jane"
//
//print(firstPersonObject.name) // output is "Jane"
//print(secondPersonObject.name) // output is "Jane"


// Implement Person struct under here!
struct Person {
    var name = ""
}

// Section B
var firstPersonStruct = Person(name: "Joe")
var secondPersonStruct = firstPersonStruct
secondPersonStruct.name = "Jane"

print(firstPersonStruct.name) // output is "Joe"
print(secondPersonStruct.name) //output is "Jane"


//: [Next](@next)
