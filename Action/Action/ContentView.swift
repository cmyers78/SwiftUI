//
//  ContentView.swift
//  Action
//
//  Created by Christopher Myers on 8/13/22.
//

import SwiftUI

struct ContentView {
    @State private var currentValue: Int = 0
    
}

extension ContentView: View {
    var body: some View {
        VStack (spacing: 30) {
            IntDisplay(value: currentValue)
            HStack (spacing: 20) {
                SymbolButton("arrow.left", action: back)
                SymbolButton("arrow.right", action: forward)
            }
   //         .buttonStyle(DoubleBorderButtonStyle())
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
