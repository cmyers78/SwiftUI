//
//  Checkerboard.swift
//  ChapterTwo-ASK
//
//  Created by Christopher Myers on 8/13/22.
//

import SwiftUI

struct Checkerboard {
    let firstView: Text
    let secondView = Rectangle()
}

extension Checkerboard: View {
    var body: some View {
        VStack {
            HStack {
                firstView
                    .frame(minWidth: 0, maxWidth: .infinity)
                secondView
            }
            HStack {
                secondView
                firstView
                    .frame(minWidth: 0, maxWidth: .infinity)
            }
        }
    }
}

extension Checkerboard {
    init(@CheckerboardBuilder builder: () -> Text) {
        firstView = builder()
    }
}

@resultBuilder
struct CheckerboardBuilder {
    static func buildBlock(_ text: Text) -> Text {
        text
    }
}

struct Checkerboard_Previews: PreviewProvider {
    static var previews: some View {
        Checkerboard(firstView: Text("Kickstart"))
    }
}
