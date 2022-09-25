import XCTest
@testable import Converters

final class ConvertersTests: XCTestCase {
    func test_convert100_return59() {
        // sut means system under testing
        let sut = Converters()

        let actual = sut.convertNZDtoUSD(nzd: "100")
        let expected = "$59.00"

        XCTAssertEqual(actual, expected)
    }

    func test_convertNeg100_returnsErrorMessage() {
        let sut = Converters()

        let actual = sut.convertNZDtoUSD(nzd: "-100")
        let expected = "Please enter a positive number."

        XCTAssertEqual(actual, expected)
    }
}
