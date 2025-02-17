import Foundation

// Dependency Inversion Principle (DIP)

/** 📌 High-level modules should not depend on low-level modules. Both should depend on abstractions. **/
/** ✅ Why? Makes the code flexible and easy to change. **/

// MARK: 🚀 Example
/** ❌ Bad Example: EmailNotifier is tightly coupled with User. **/

class EmailNotifier {
    func sendEmail(message: String) {
        print("Sending email: \(message)")
    }
}

class User {
    let notifier = EmailNotifier() // ❌ Tight coupling
    
    func notifyUser() {
        notifier.sendEmail(message: "Hello User!")
    }
}
/** 🔴 Problem: If we change EmailNotifier, we must modify User. **/

// -----------------------------

/** ✅ Good Example: Use dependency injection with a protocol. **/

protocol Notifier {
    func send(message: String)
}

class EmailNotifiers: Notifier {
    func send(message: String) {
        print("Sending email: \(message)")
    }
}

class Users {
    let notifier: Notifier // ✅ Depends on abstraction

    init(notifier: Notifier) {
        self.notifier = notifier
    }

    func notifyUser() {
        notifier.send(message: "Hello User!")
    }
}

// Usage
let emailNotifier = EmailNotifiers()
let user = Users(notifier: emailNotifier)
user.notifyUser()

// ✔️ Now, we can easily replace EmailNotifier with SMSNotifier, etc.
