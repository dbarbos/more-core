//
//  Serie.swift
//  MoreCore
//
//  Created by Diler Barbosa on 10/11/17.
//  Copyright © 2017 Diler Barbosa. All rights reserved.
//

import Foundation


class Serie: ReportDataProtocol {
    
    var name = String()
    var components = [Component]()
    var structures = [Structure]()
    
    required init(name: String, dictionary: NSDictionary, structures: [Structure]) {
        self.name = name
        self.structures = structures
        self.components = ConvertDictionary(dictionary, withStructures: structures).inToAComponentsObject()
    }
    
}
