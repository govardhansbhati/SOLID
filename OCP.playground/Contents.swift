import UIKit
/** 📌 A class should be open for extension but closed for modification.
✅ Why? New functionality should be added without modifying existing code. **/

// MARK: 🚀 Example
/** ❌ Bad Example: A Discount class that needs to change whenever a new discount type is added. **/

class Discount {
    func calculate(price: Double, type: String) -> Double {
        if type == "NewYear" {
            return price * 0.9
        } else if type == "BlackFriday" {
            return price * 0.8
        }
        return price
    }
}

/** 🔴 Problem: Every time a new discount type is added, we modify this class. **/

// -------------------------------------------
/** ✅ Good Example: Use polymorphism to extend without modifying. **/
protocol Discounts {
    func apply(to price: Double) -> Double
}

class NewYearDiscount: Discounts {
    func apply(to price: Double) -> Double {
        return price * 0.9
    }
}

class BlackFridayDiscount: Discounts {
    func apply(to price: Double) -> Double {
        return price * 0.8
    }
}

// Usage
let discount: Discounts = BlackFridayDiscount()
let finalPrice = discount.apply(to: 100.0) // Output: 80.0
