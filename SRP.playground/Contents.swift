import Foundation

// MARK: Single Responsibility Principle (SRP)
/** 📌 Each class should have only one reason to change.
 ✅ Why? Makes the code easier to maintain. **/


// MARK: Bad example
/** ❌ Bad Example: A ReportManager class that both generates and prints reports. **/

class ReportManager {
    func generateReport() {
        print("Generating report...")
    }
    
    func printReport() {
        print("Printing report...")
    }
}
/** 🔴 Problem: If we want to change printing logic, we have to modify ReportManager, which should only handle report generation. **/


// MARK: Good Example
/** ✅ Good Example: Split responsibilities into two classes. **/
class ReportGenerator {
    func generateReport() {
        print("Generating report...")
    }
}

class ReportPrinter {
    func printReport() {
        print("Printing report...")
    }
}

// Usage
let generator = ReportGenerator()
generator.generateReport()

let printer = ReportPrinter()
printer.printReport()

/** ✔️ Now, each class has only one reason to change. **/
