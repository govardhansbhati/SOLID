import Foundation

// Interface Segregation Principle (ISP)

/** 📌 A class should not be forced to implement methods it doesn't need.
✅ Why? Avoids unnecessary dependencies. **/

// MARK: 🚀 Example
/// ❌ Bad Example: A Worker protocol forces Robot to implement eat(), which it doesn’t need.


protocol Worker {
    func work()
    func eat()
}

class Human: Worker {
    func work() {
        print("Human working")
    }
    
    func eat() {
        print("Human eating")
    }
}

class Robot: Worker {
    func work() {
        print("Robot working")
    }
    
    func eat() {
        fatalError("Robots don't eat!")
    }
}

/** 🔴 Problem: Robot is forced to implement eat(), even though it doesn’t need it. **/
/// ----------------------------------------
/** ✅ Good Example: Split into multiple protocols. **/

protocol Workable {
    func work()
}

protocol Eatable {
    func eat()
}

class Humans: Workable, Eatable {
    func work() {
        print("Human working")
    }
    
    func eat() {
        print("Human eating")
    }
}

class Robots: Workable {
    func work() {
        print("Robot working")
    }
}

// ✔️ Now, Robot is not forced to implement eat().
