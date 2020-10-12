//
//  BaseService.swift
//  MyProject
//
//  Created by Le Manh on 10/2/20.
//  Copyright © 2020 Le Manh. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

typealias AppServiceFailure = ((Error) -> Void)

class BaseService: NSObject {
    
    static func createHeaderRequest() -> HTTPHeaders {
        return ["Authorization": "Bearer \(UserModel.shared.token)"]
    }
    
    static func sendRequest(path: String, method: HTTPMethod, params: Parameters, completion: @escaping(JSON) -> Void, failure: @escaping AppServiceFailure) {
        
        AF.request(Constant.baseUrl + path, method: method, parameters: params, encoding: URLEncoding.init(destination: .methodDependent), headers: createHeaderRequest()).responseJSON { (response) in
            ///
            
            if let data = response.data {
                
                let json = JSON(data)
                if json["status"].intValue == 1 {
                    completion(json["data"])
                } else {
                    // looix
                    failure(NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey: json["message"].stringValue]))
                }
                print(json)
            } else {
                failure(NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey: "Có lỗi xảy ra"]))
            }
            
        }

    }
    
}
