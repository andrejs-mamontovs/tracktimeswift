import XCTest
@testable import TrackTime

class TrackTimeTests: XCTestCase {
    func testToString() {
        XCTAssertEqual(TrackTimeMock().description, "[string]")
        XCTAssertEqual("\(TrackTimeMock())", "[string]")     
    }

    func testCallerName() {
        let a = String(describing: TrackTime())
        XCTAssertTrue(a.hasPrefix(#function))

        let b = String(describing: TrackTime(caller: "Submit"))
        XCTAssertTrue(b.hasPrefix("Submit"))
    }

    static var allTests = [
        ("testCallerName", testCallerName),
    ]
}

class TrackTimeMock: TrackTime {
    override func toString() -> String {
        return "[string]"
    }
}