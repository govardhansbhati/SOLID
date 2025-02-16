# SOLID Principles in Swift 🚀

This repository contains detailed explanations and Swift Playground code examples demonstrating the SOLID principles of object-oriented design.

📌 What is SOLID?

SOLID is a set of five design principles that help create maintainable, scalable, and flexible software.

1️⃣ S - Single Responsibility Principle (SRP)
"A class should have only one reason to change."

✅ Ensures each class has only one responsibility.
🛠 Example: Separating report generation from report printing.


2️⃣ O - Open/Closed Principle (OCP)
"Software entities should be open for extension but closed for modification."

✅ New functionality should be added without modifying existing code.
🛠 Example: Using protocols to add new discount types without changing the core logic.


3️⃣ L - Liskov Substitution Principle (LSP)
"Objects of a superclass should be replaceable with objects of a subclass without breaking the system."

✅ A subclass should never break the behavior of its superclass.
🛠 Example: Avoiding a Penguin subclass that overrides fly() incorrectly.


4️⃣ I - Interface Segregation Principle (ISP)
"A class should not be forced to implement interfaces it does not use."

✅ Interfaces should be small and focused.
🛠 Example: Splitting a Worker protocol into Workable and Eatable.


5️⃣ D - Dependency Inversion Principle (DIP)
"High-level modules should not depend on low-level modules. Both should depend on abstractions."

✅ Depend on protocols instead of concrete implementations.
🛠 Example: Using Notifier protocol instead of directly depending on EmailNotifier.
