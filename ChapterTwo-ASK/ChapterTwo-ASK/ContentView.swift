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
            Image("Cover")
                .resizable()
                .scaledToFit()
            Text("Cover")
            .padding()
        
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
