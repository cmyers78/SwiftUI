//
//  Checkerboard.swift
//  ChapterTwo-ASK
//
//  Created by Christopher Myers on 8/13/22.
//

import SwiftUI

struct Checkerboard<A: View, B: View> {
    let firstView: A
    let secondView: B
    let stackColor: Color
}

extension Checkerboard: View {
    var body: some View {
        VStack {
            HStack {
                firstView
                    .frame(minWidth: 0, maxWidth: .infinity)
                secondView
                    .frame(minWidth: 0, maxWidth: .infinity)
            }
            HStack {
                secondView
                    .frame(minWidth: 0, maxWidth: .infinity)
                firstView
                    .frame(minWidth: 0, maxWidth: .infinity)
            }
        }
        .background(stackColor)
    }
}

extension Checkerboard {
    init(backgroundColor: Color = .white, @CheckerboardBuilder builder: () -> (A, B)) {
        stackColor = backgroundColor
        (firstView, secondView) = builder()
    }
}

extension Checkerboard where B == Rectangle {
    init(backgroundColor: Color = .white, @CheckerboardBuilder builder: () -> (A)) {
        stackColor = backgroundColor
        firstView = builder()
        secondView = Rectangle()
    }
}

@resultBuilder
struct CheckerboardBuilder {
    static func buildBlock<A: View, B: View>(_ firstView: A, _ secondView: B) -> (A, B) {
        (firstView, secondView)
    }
    
    static func buildBlock<A:View>(_ firstView: A) -> A {
        firstView
    }
}

struct Checkerboard_Previews: PreviewProvider {
    static var previews: some View {
        Checkerboard(firstView: Text("Kickstart"), secondView: Rectangle(), stackColor: .mint)
    }
}
