import ModuleInterface

class MyModule: ModuleProtocol {
    func method() -> ModuleInterface.Value {
        return ModuleInterface.Value(name: "name")
    }
}
