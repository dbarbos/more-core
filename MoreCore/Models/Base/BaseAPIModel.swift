//
//  BaseAPIModel.swift
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


protocol BaseAPIModel: Mappable {
    
}

extension BaseAPIModel {
    
    mutating func mapping(map: Map) {

    }
    
    
    static func api(
        _ path : String,
        method: HTTPMethod = .get,
        headers: HTTPHeaders = REGULAR_ACCESS_HEADER
        ) -> Promise<Self>
    {
        let url = URL_API + path
        
        return Promise { fulfill, reject in
            Networking.manager.request(
                url,
                method: method,
                headers: headers
                )
                .validate(statusCode: 200..<300)
                .responseObject { (response: DataResponse<Self>) in
                    switch response.result {
                    case .success:
                        fulfill(response.result.value!)
                    case .failure(let error):
                        reject(error)
                    }
            }
            
        }
    }
    
}
