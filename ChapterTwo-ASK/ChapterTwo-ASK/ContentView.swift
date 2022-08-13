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
        VStack {
            Checkerboard(backgroundColor: .red) {
                Image("Cover")
                    .resizable()
                    .scaledToFit()
                Text("Go DAWGS")
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
