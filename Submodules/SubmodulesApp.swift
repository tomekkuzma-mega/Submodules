import SwiftUI
import Module
import ModuleInterface

@main
struct SubmodulesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(module: MyModule())
        }
    }
}
