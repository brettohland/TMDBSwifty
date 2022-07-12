import XCTest
@testable import TMDBClient

final class TMDBClientTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(TMDBClient().text, "Hello, World!")
    }
}
