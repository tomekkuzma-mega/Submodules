import XCTest
@testable import Submodules
import ModuleMocks

final class SubmodulesTests: XCTestCase {
    func testExample() throws {
        XCTAssertEqual(MyModuleMock().method().name, "sample")
    }
}
