//
//  ContentView.swift
//  Action
//
//  Created by Christopher Myers on 8/13/22.
//

import SwiftUI

//private let colors: [Color] = [.red, .mint, .purple]

struct ContentView {
    @ObservedObject var support: ContentViewSupport
}

extension ContentView: View {
    var body: some View {
        VStack (spacing: 30) {
            IntDisplay(value: support.currentValue)
            HStack (spacing: 60) {
                SymbolButton("arrow.left", action: support.back)
                SymbolButton("arrow.right", action: support.forward)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(support: ContentViewSupport())
    }
}
