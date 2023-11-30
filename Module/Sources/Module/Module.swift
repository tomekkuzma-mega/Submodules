import ModuleInterface

public class MyModule: ModuleProtocol {
    public init() {}
    public func method() -> ModuleInterface.Value {
        return ModuleInterface.Value(name: "My Module")
    }
}
