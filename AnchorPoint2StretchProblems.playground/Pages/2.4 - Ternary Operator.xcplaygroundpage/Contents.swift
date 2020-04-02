//: [Number Printer](@previous)
/*:
 # Thursday Stretch Problem 2.4
 ## Ternary Operator
 ### Instructions - PART 1
 - Make an array of 10 Ints. Then make a function that takes a parameter of `[Int]` and loops through the array.
 - If the value is below 50, print "low". Otherwise, print "high."
 - Test your function by passing in the array.
 - Now add an if statement to your loop so that if the value is divisible by 13 it also prints "didn't learn this one in school," otherwise print "that's easy."
 - Add another if statement to your loop so that if the value is greater than the previous value it also prints "getting bigger" otherwise print "it's stopped growing" (for the first value, you can compare it to 0).
 - An example of the print statement would be `low, that's easy, getting bigger.`
 - NOTE: you may want to create a "print" variable and add to it every time we add a new piece of logic, i.e. `var printStatement = ""`, then start adding to it `printStatement += "low"`, etc.
 
 ### Instructions - PART 2
 - Change your code to use ternary operators (see "Ternary Conditional Operator" in the Swift Programming Guide)
 
 ### Instructions - PART 3
 - Create two optional values, one set to nil and one not set to nil, and use “nil coalescing” (also see documentation or the Swift Programming Guide) to unwrap each optional value (in place of if let)
 
 ### Black Diamond 💎💎💎
 - Write a function called "nestedTernary" that takes in a single integer.
 - If the integer is greater than 50 and even, it should print "big even". If it is greater than 50 and odd, it should print "big odd".
 - Likewise, a smaller integer should print "little even" or "little odd".
 - Do this using a nested ternary operator instead of `if` statements.
 */
import Foundation

let anArray = [0, 26, 34, 39, 55, 76, 87, 45, 90, 100]

func loopingArray (array: [Int]) {
    for integer in anArray {
        if integer <= 50 {
            print("low")
        } else {
            print("high")
        }
        if integer.isMultiple(of: 13) {
            print("didn't learn this one in school")
        } else {
            print("that's easy")
        }
        if integer <= anArray[anArray.count - 1] {
            print("getting bigger")
        } else {
            print("it stopped growing")
        }
    }
}
 loopingArray(array: anArray)



