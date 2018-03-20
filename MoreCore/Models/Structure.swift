//
//  Structure.swift
//  MoreCore
//
//  Created by Diler Barbosa on 07/11/17.
//  Copyright © 2017 Diler Barbosa. All rights reserved.
//

import Foundation
import ObjectMapper
import Alamofire
import PromiseKit
import AlamofireObjectMapper

class Structure: BaseAPIModel{
    var id: Int!
    var reportId: Int!
    var name: String!
    var type: String!
    var level: Int!
    var value: String!
    var order: Int!
    
    
    init(){
        
    }
    
    convenience required init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        reportId <- map["report_id"]
        name <- map["name"]
        type <- map["type"]
        level <- map["level"]
        value <- map["value"]
        order <- map["order"]
        
    }
    
    
}
