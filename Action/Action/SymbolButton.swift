//
//  SymbolButton.swift
//  Action
//
//  Created by Christopher Myers on 8/14/22.
//

import SwiftUI

struct SymbolButton {
    let symbolName: String
    let action: () -> Void
    
    init(_ symbolName: String, action: @escaping () -> Void = {}) {
        self.symbolName = symbolName
        self.action = action
    }
}

extension SymbolButton: View {
    var body: some View {
        Button(action: action) {
            Image(systemName: symbolName)
        }
        .buttonStyle(DoubleBorderButtonStyle())
    }
}

struct SymbolButton_Previews: PreviewProvider {
    static var previews: some View {
        SymbolButton("questionmark")
    }
}
