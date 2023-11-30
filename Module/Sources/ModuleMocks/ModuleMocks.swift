import ModuleInterface

public class MyModuleMock: ModuleProtocol {
    public init() {
        
    }
    public var valueToReturn = ModuleInterface.Value(name: "sample")
    public func method() -> ModuleInterface.Value {
        valueToReturn
    }
}
