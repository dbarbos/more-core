//
//  DataPoint.swift
//  MoreCore
//
//  Created by Diler Barbosa on 10/11/17.
//  Copyright © 2017 Diler Barbosa. All rights reserved.
//

import Foundation


class DataPoint: ReportDataProtocol {
    
    var name = String()
    var series = [Serie]()
    var structures = [Structure]()
    
    required init(name: String, dictionary: NSDictionary, structures: [Structure]){
        self.name = name
        self.structures = structures
        series = ConvertDictionary(dictionary, withStructures: structures).inToASeriesObject()
        
    }
    
}
