Learning Objectives: Understand Swift syntax, OOP concepts, collections, error handling, concurrency, and standard library features.

Prerequisites: Basic programming knowledge is assumed.

Depth & Scope: Intermediate; covers fundamental to moderately advanced Swift topics with a focus on practical application.

Target Audience: Intermediate Swift developers.

Technical Details:
*   Variables/Constants: `var name = "Alice"`, `let pi = 3.14`
*   Optionals: `var optionalInt: Int? = 5`, `if let value = optionalInt { print(value) }`
*   Functions: `func add(a: Int, b: Int) -> Int { return a + b }`
*   Closures: `{ (x: Int) in return x * 2 }`
*   Classes/Structs: `class MyClass { var property: Int = 0 }`
*   Arrays: `var numbers = [1, 2, 3]`, `numbers.append(4)`
*   Dictionaries: `var ages = ["Alice": 30, "Bob": 25]`
*   Error Handling: `enum MyError: Error { case somethingFailed }`, `throw MyError.somethingFailed`
*   GCD: `DispatchQueue.global().async { // Background task }`
*   Async/Await: `async func fetchData() async throws { let result = try await someAsyncFunction() }`
*   Optionals: `var value: String? = "Example", let length = value?.count`
*   Core Foundation: `let swiftString = "Hello", let nsString = swiftString as NSString`
*   String Manipulation: `let nsString: NSString = "Hello", let swiftString = nsString as String`
*   Date and Time: `let date = Date(), let dateFormatter = DateFormatter(), dateFormatter.dateFormat = "yyyy-MM-dd"`
*   URLSession: `URLSession.shared.dataTask(with: url) { (data, response, error) in ... }.resume()`

Relevant Technologies/Tools: Swift, Xcode, Foundation Framework, Core Foundation.

Preferred Format/Length: Detailed explanations with concise examples.
