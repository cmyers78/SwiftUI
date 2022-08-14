//
//  DoubleBorderButtonStyle.swift
//  Action
//
//  Created by Christopher Myers on 8/14/22.
//

import Foundation
import SwiftUI

struct DoubleBorderButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(4)
            .border(.mint)
            .padding(4)
            .border(.mint)
    }
}
