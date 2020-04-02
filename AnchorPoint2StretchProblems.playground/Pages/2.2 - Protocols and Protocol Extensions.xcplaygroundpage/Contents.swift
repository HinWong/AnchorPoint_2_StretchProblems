//: [Properties](@previous)
/*:
 # Tuesday Stretch Problem 2.2
 ## Protocols and Protocol Extensions
 ### Instructions
 - Create a protocol called `Vehicle` that requires a variable for speed as a `Double`, a variable for isMoving as a `Bool`, and a `func startMoving()` and `func stopMoving()`.
 - Create two separate classes that conform to the `Vehicle` protocol (i.e. `class LawnMower` and `class Truck`). Your start and stop functions should simply check for whether or not the isMoving property is true or false, switch it to the opposite, and then print whether or not it is moving.
 - Create one instance of each of your two classes, and call your start and stop functions on them to be sure they work.
 - Notice that you have to write the same function in two distinct classes. Create an extension on your vehicle protocol and implement the two functions there. Now delete the two functions from your two classes. Notice that you do not have an error and that the functions still work.
 
 ### Black Diamond 💎💎💎
 - Create a `protocol Racer` that inherits from your first protocol and adds a `func race() -> Double`.
 - Implement your race function in a protocol extension. It should return the time it takes for the vehicle the function was called on to travel 1000 meters.
 - Create two more classes that conform to `Racer` or make your existing vehicles conform to `Racer`. Create another function outside of your classes that will take in two `Racer` objects and return the winner.
 */

import UIKit

protocol Vehicle {
    
    var speed:Double { get }
    var isMoving:Bool { get set}
  
  mutating func startMoving()
  mutating func stopMoving()
    
}

extension Vehicle {
    mutating func startMoving() {
        if isMoving {
            print("the vehicle is already moving")
        } else {
            isMoving = true
            print("The vehicle is moving")
        }
    }
    mutating func stopMoving() {
        if isMoving {
            isMoving = false
            print("the vehicle has stopped")
        } else {
            print("The vehicle has already stopped")
        }
    }
}

class LawnMower: Vehicle {
    var speed: Double
    var isMoving = true

    init(speed: Double, isMoving:Bool) {
        self.speed = speed
        self.isMoving = isMoving
    }
}
class Truck: Vehicle  {
    var speed: Double
    var isMoving = false

    init(speed:Double, isMoving:Bool) {
        self.speed = speed
        self.isMoving = isMoving
    }
}

var tractor = LawnMower(speed: 10, isMoving: false)
tractor.startMoving()


var f150 = Truck(speed: 50, isMoving: true)
f150.stopMoving()





//: [Number Printer](@next)
