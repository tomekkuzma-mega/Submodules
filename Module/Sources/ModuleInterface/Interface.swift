import Foundation

public struct Value: Equatable {
    public init(name: String) {
        self.name = name
    }
    
    public var name: String
}
public protocol ModuleProtocol {
    func method() -> Value
}
