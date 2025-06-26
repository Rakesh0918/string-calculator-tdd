🧮 String Calculator TDD Kata (Swift + UIKit)

This project is a solution to the TDD assignment for the String Calculator Kata using Swift, UIKit, and XCTest. It demonstrates a step-by-step evolution of code via Test-Driven Development principles.

📌 Requirements Covered

Handle empty input → returns 0
Handle one number → returns that number
Handle comma-separated values → returns sum
Support newlines (\n) between numbers
Support custom delimiters (e.g., //;\n1;2)
Throw error for negative numbers and list them in the message
✅ Test-Driven Development (TDD)

Tests are added before implementation. Every test reflects a requirement and drives the next minimal implementation step.

🧪 Example test (in XCTest):

func testEmptyInputReturnsZero() throws {
    let calculator = StringCalculator()
    XCTAssertEqual(try calculator.add(""), 0)
}
🧬 Function Signature

func add(_ numbers: String) throws -> Int
📱 UIKit-Based UI

UITextField for input
UIButton to trigger calculation
UILabel to show result or error message
💻 Run the App

Open StringCalculatorTDD.xcodeproj
Cmd + R to launch iOS UI
Cmd + U to run tests
📷 Screenshots

(Screenshots can be added here later)

🚀 Run Locally

Clone the repository:

git clone https://github.com/YOUR_USERNAME/string-calculator-tdd.git
cd string-calculator-tdd
open StringCalculatorTDD.xcodeproj
🧑‍💻 Author

Rakesh Sharma – iOS Developer (4+ years experience)
