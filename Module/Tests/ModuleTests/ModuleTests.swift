import XCTest
@testable import Module
import ModuleMocks
import ModuleInterface

final class ModuleTests: XCTestCase {
    func testExample() throws {
        let mock = MyModuleMock()
        mock.valueToReturn = .init(name: "My Module")
        let module = MyModule()
        XCTAssertEqual(mock.method(), module.method())
    }
}
