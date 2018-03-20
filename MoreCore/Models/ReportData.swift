//
//  MoreData.swift
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

class ReportData: BaseAPIModel{
    var report: Report!
    var structures: [Structure]!
    var lastUpdate: String!
    var lastUpdateTimezone: Time!
    var reportData: NSDictionary!
    
    init(){

    }
    
    convenience required init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        report <- map["report"]
        structures <- map["structures"]
        lastUpdate <- map["last_update"]
        lastUpdateTimezone <- map["last_update_timezone"]
        reportData <- map["report_data_v2"]
        
    }
    
    
    static func get(_ id: Int) -> Promise<ReportData> {
        return ReportData.api("report/\(id)", method: .get)
    }
    
}


