//
//  Time.swift
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

class Time: BaseAPIModel{
    var date: String!
    var timezoneType: Int!
    var timezone: String!
    
    init(){
        
    }
    
    convenience required init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        date <- map["date"]
        timezoneType <- map["timezone_type"]
        timezone <- map["timezone"]
        
    }
    
    
}
