import Foundation


// L - Liskov Substitution Principle (LSP)

/** 📌 Subclasses should be replaceable without affecting the correctness of the program.
✅ Why? Ensures objects of a superclass can be replaced with objects of its subclass. **/

//MARK: 🚀 Example
/** ❌ Bad Example: A subclass (Penguin) that breaks expectations of its superclass (Bird). **/

class Bird {
    func fly() {
        print("Flying")
    }
}

class Penguin: Bird {
    override func fly() {
        fatalError("Penguins can't fly!")
    }
}

// Usage
let penguin = Penguin()
penguin.fly() // 🚨 Crashes the program


/** 🔴 Problem: Penguins cannot fly, so Penguin shouldn't be a subclass of Bird. **/

// -----------------------------------------------

/** ✅ Good Example: Create a separate protocol for flying behavior. **/

protocol Flyable {
    func fly()
}

class Sparrow: Flyable {
    func fly() {
        print("Sparrow is flying")
    }
}

class Penguine {
    func swim() {
        print("Penguin is swimming")
    }
}

// Usage
let sparrow: Flyable = Sparrow()
sparrow.fly() // ✅ Works fine!

let penguine = Penguine()
penguine.swim() // ✅ Works fine!

// ✔️ Now, Penguin doesn't break expectations.
