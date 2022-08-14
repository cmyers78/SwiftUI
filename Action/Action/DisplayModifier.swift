//
//  DisplayModifier.swift
//  Action
//
//  Created by Christopher Myers on 8/14/22.
//

import Foundation
import SwiftUI

struct DisplayModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.secondary)
    }
}
