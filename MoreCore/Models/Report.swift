//
//  Report.swift
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

class Report: BaseAPIModel{
    var id: Int!
    var name: String!
    var description: String!
    var type: String!
    var active: Int!
    var isActive: Bool!
    
    init(){
        
    }
    
    convenience required init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        description <- map["description"]
        type <- map["type"]
        active <- map["active"]

    }
    
    
}
