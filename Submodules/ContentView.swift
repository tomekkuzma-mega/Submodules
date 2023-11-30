//
//  ContentView.swift
//  Submodules
//
//  Created by mega on 17/11/2023.
//

import SwiftUI
import Module
import ModuleInterface

struct ContentView: View {
    let module: any ModuleProtocol
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(module.method().name)
        }
        .padding()
    }
}

#if DEBUG
import ModuleMocks
#Preview {
    ContentView(module: MyModuleMock())
}

#endif
