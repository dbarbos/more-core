//
//  Component.swift
//  MoreCore
//
//  Created by Diler Barbosa on 10/11/17.
//  Copyright © 2017 Diler Barbosa. All rights reserved.
//

import Foundation

class Component {
    
    var name = String()
    var values = [Int]()
    
    required init(name: String, values: [Int]) {
        self.name = name
        self.values = values
    }
    
}
