//: [Protocols](@previous)
/*:
 # Wednesday Stretch Problem 2.3
 ## Number Printer
 ### Instructions
 - Create a function that takes a single digit `Int` as a parameter and prints it to the console the way an old-school alarm clock would look. You may create auxiliary functions if needed.
 - For example, if you pass 2 the console might look something like this:
 ```
  ---
     |
  ---
 |
  ---
 ```
 - If you pass 8 the console might look something like this:
 ```
  ---
 |   |
  ---
 |   |
  ---
 ```
 
 ### Black Diamond 💎💎💎
 - Modify the function to take an `Int` with multiple digits and print each number in the same fashion on a single Line.
 - For example, if you pass 257 the console might look something like this:
 ```
  ---   ---  ---
     | |        |
  ---   ---     |
 |         |    |
  ---   ---     |
```
 */
import Foundation

func numberPrinter (number:Int) {
    switch number {
    case 0:
        let zero = """
         ---
        |   |
        |   |
         ---
        """
        print("\(zero)")
    case 1:
        let one = """
        |
        |
        |
        """
        print("\(one)")
    case 2:
        let two = """
 ---
    |
 ---
|
 ---
"""

        print("\(two)")
    case 3:
        let three = """
---
   |
---
   |
---
"""
        print("\(three)")
    case 4:
        let four = """
|   |
|   |
 ---|
    |
    |
"""
        print("\(four)")
    case 5:
        let five = """
 ---
|
 ---
    |
 ---
"""
        print("\(five)")
    case 6:
        let six = """
 ---
|
 ---
|   |
 ---
"""
        print("\(six)")
    case 7:
        let seven = """
---
   |
   |
   |
"""
        print("\(seven)")
    case 8:
        let eight = """
 ---
|   |
 ---
|   |
 ---
"""
        print("\(eight)")
    case 9:
        let nine = """
 ---
|   |
 ---
    |
 ---
"""
        print("\(nine)")
    default:
        print("Impossible")
    }
}

numberPrinter(number: 0)


//let bottomBar = "--"
//let topBar = "--"
//let leftSide = "|"
//let rightSide = "|"
//: [Ternary Operator](@next)
