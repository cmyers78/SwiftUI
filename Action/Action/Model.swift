//
//  Model.swift
//  Action
//
//  Created by Christopher Myers on 8/31/22.
//

import Foundation

struct Model {
    let value: Int
}

extension Model {
    var decrease: Model {
        Model(value: value - 1)
    }
    
    var increase: Model {
        Model(value: value + 1)
    }
}
