//
//  ContentViewSupport.swift
//  Action
//
//  Created by Christopher Myers on 8/31/22.
//

import Foundation
import Combine

class ContentViewSupport: ObservableObject {
    @Published private var model = Model(value: 0)
    
    var currentValue: Int {
        model.value
    }
    
    func back() {
        model = model.decrease
    }
    
    func forward() {
        model = model.increase
    }
}
