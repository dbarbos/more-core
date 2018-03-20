//
//  Area.swift
//  MoreCore
//
//  Created by Diler Barbosa on 10/11/17.
//  Copyright © 2017 Diler Barbosa. All rights reserved.
//

import Foundation

class Area: ReportDataProtocol{
    var name = String()
    var structures = [Structure]()
    
    var capacity = Int()
    var circulante = Int()
    var percentage = Float()
    var startStatus = String()
    var endStatus = String()
    var tendency = Int()
    
    required init(name: String, dictionary: NSDictionary, structures: [Structure]){
        self.name = name
        self.structures = structures
        
        if let newCapacity = dictionary["capacity"] as? Int {
            capacity = newCapacity
        }
        if let newCirculante = dictionary["circulante"] as? Int {
            circulante = newCirculante
        }
        if let newPercentage = dictionary["percentage"] as? Float {
            percentage = newPercentage
        }
        if let newStartStatus = dictionary["start_status"] as? String {
            startStatus = newStartStatus
        }
        if let newEndStatus = dictionary["end_status"] as? String {
            endStatus = newEndStatus
        }
        if let newTendency = dictionary["tendency"] as? Int {
            tendency = newTendency
        }
        
    }
    
    
}
