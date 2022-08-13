//
//  ContentView.swift
//  ChapterTwo-ASK
//
//  Created by Chris Myers on 8/8/22.
//

import SwiftUI

struct ContentView: View {
    // let hasImage = true
    var body: some View {
        VStack(spacing: 10) {
            Text("A SwiftUI Kickstart")
            HStack(spacing: 20) {
                Button("Back", action: {})
                Button("Forward", action: {})
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}
