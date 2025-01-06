//
//  LoginPageUISwiftUIApp.swift
//  LoginPageUISwiftUI
//
//  Created by Andrew Borisov on 03.01.2025.
//

import SwiftUI

@main
struct LoginPageUISwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        // Hiding the Title Bar..
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}

// Hiding TextField Focus Ring
extension NSTextField{
    open override var focusRingType: NSFocusRingType{
        get{.none}
        set{}
    }
}
