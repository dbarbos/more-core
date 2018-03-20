//
//  APISettings.swift
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


let TOKEN : String = "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjYzMmRlZmU5ZjQ5MzcxNzdmYzkzN2JmNTI3ZTM5M2MxNDg3MzU1OTljZGM5NjU5YTdlMTIxODdlZjlkMzM3ZDI3Y2MwOTBmNDc5NjRjYTMyIn0.eyJhdWQiOiIyIiwianRpIjoiNjMyZGVmZTlmNDkzNzE3N2ZjOTM3YmY1MjdlMzkzYzE0ODczNTU5OWNkYzk2NTlhN2UxMjE4N2VmOWQzMzdkMjdjYzA5MGY0Nzk2NGNhMzIiLCJpYXQiOjE1MjE0NjcyNzgsIm5iZiI6MTUyMTQ2NzI3OCwiZXhwIjoxNTUzMDAzMjc4LCJzdWIiOiI0Iiwic2NvcGVzIjpbXX0.jMIjEkgMYeTf-jJk2ZbPIZ_xw4Q6_fkBIflnWwDsoCm89lxKMYUX1Oso9sAGOHEsBgJpUb2a5mtBnKVnISpfgZVE7bkWneYNNnvXGwlOgT81YUd4Lz4oHJ-jtSAam7r6HPFdg-KFpBq7E1mCbQtlM79IKiEOl5UhUSZhOwe2CoZg4yUj1dAJSDV3t8Q4uZBEnNmiZ4sRDHgJux8RaRv78l8ylpocuq4qtUFqiG4aIUFVaRv4SLNLda44h3W_Kv5yh5HWMqqxf_b0sUdNLapkDuxPtvqVC_8tp7h6xAHA02G4NfbJJtAqtDVGooTYW8dVUMnt_geOASbhdYLshLQao7-IIw-FNaSLhRSUdEUPFb0SL1x1TB8sN_5E4Gk49gYts4K3WFJ6-pn0yKFza-PLewGEhTgD4RdzvnRw4clTrGxvK1QdMNv8FyKogTRmWlZjNHSu4CNe2Mi2j0MZFfjVTM92WPlv2YnLPiyVKMgikpfhs5H-Uqd7dRMrQHTgXXk879GyfQC9nroyoWFnbK6bw-2g-ua3zMDkpQBapmP4_xUZv2ZPvlbChiZaNlNQwwtsmazp_Pxi6FggrISufrVuWpGyg8hq2eLn0OYrfB-b__Nf4W0kj4gDidg2G5Ve9e_G87j54hpAZGccxV9_j8Qk3hEltua31Q8UvrLeA2wJmgI"

let REGULAR_ACCESS_HEADER: HTTPHeaders = [
    "Authorization" : "Bearer " + TOKEN
]

let URL_API = "http://showcaseinternational.t-systems.com.br/mobileapps/more-server-bentley/public/api/"


class Networking {
    static let manager: SessionManager = {
        let serverTrustPolicies: [String: ServerTrustPolicy] = [
            "showcaseinternational.t-systems.com.br": .disableEvaluation
        ]
        
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = Alamofire.SessionManager.defaultHTTPHeaders
        
        return Alamofire.SessionManager(configuration: configuration,
                                 serverTrustPolicyManager: ServerTrustPolicyManager(policies: serverTrustPolicies))
    }()
    
}


