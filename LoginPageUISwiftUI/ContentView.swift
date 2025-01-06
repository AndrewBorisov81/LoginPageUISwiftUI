//
//  ContentView.swift
//  LoginPageUISwiftUI
//
//  Created by Andrew Borisov on 03.01.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Login()
            .preferredColorScheme(.light)  // Forces light mode
    }
}

#Preview {
    ContentView()
}
