import XCTest
@testable import SpriteLabUtility

class SpriteLabUtilityTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(SpriteLabUtility().text, "Hello, World!")
    }


    static var allTests : [(String, (SpriteLabUtilityTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
