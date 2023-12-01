import ModuleInterface
import SwiftUI
public class MyModule: ModuleProtocol {
    public init() {}
    public func method() -> ModuleInterface.Value {
        return ModuleInterface.Value(name: "My Module")
    }
}

#if canImport(ModuleMocks)
import ModuleMocks
#Preview {
    Text(MyModuleMock().method().name)
}
#endif
