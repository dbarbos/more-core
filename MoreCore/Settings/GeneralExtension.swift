//
//  GeneralExtension.swift
//  MoreCore
//
//  Created by Diler Barbosa on 08/11/17.
//  Copyright © 2017 Diler Barbosa. All rights reserved.
//

import Foundation


extension Int {
    mutating func toBool() -> Bool {
        if self == 1 {
            return true
        }else{
            return false
        }
    }
}

extension String {
    func toBool() -> Bool {
        if self == "yes" || self == "sim" || self == "ya" || self == "si" {
            return true
        }else{
            return false
        }
    }
    
    func toInt() -> Int {
        if let valor = Int(self) {
            return valor
        }else{
            return 0
        }
    }
}

extension Sequence where Iterator.Element == Structure
{
    var dataPoints: [Structure] { get { return self.filter { $0.level == 0 } } }
    var series: [Structure] { get { return self.filter { $0.level == 1 } } }
    var components: [Structure] { get { return self.filter { $0.level == 2 } } }
}

