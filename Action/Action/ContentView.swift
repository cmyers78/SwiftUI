//
//  ContentView.swift
//  Action
//
//  Created by Christopher Myers on 8/13/22.
//

import SwiftUI

//private let colors: [Color] = [.red, .mint, .purple]

struct ContentView {
    @State private var currentValue: Int = 0
    @State private var horizontalSpace = 0.0
}

extension ContentView: View {
    var body: some View {
        VStack (spacing: 30) {
            IntDisplay(value: currentValue)
            HStack (spacing: horizontalSpace) {
                SymbolButton("arrow.left", action: back)
                SymbolButton("arrow.right", action: forward)
            }
            DesignHelper(currentValue: $horizontalSpace, range: 0...100)
        }
    }
}

extension ContentView {
    private func back() {
        currentValue -= 1
    }
    
    private func forward() {
        currentValue += 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
