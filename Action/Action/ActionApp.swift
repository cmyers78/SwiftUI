//
//  ActionApp.swift
//  Action
//
//  Created by Christopher Myers on 8/13/22.
//

import SwiftUI

@main
struct ActionApp: App {
    private let support = ContentViewSupport()
    
    var body: some Scene {
        WindowGroup {
            ContentView(support: support)
        }
    }
}
