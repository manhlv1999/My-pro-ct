//
//  UserModel.swift
//  MyProject
//
//  Created by Le Manh on 9/30/20.
//  Copyright © 2020 Le Manh. All rights reserved.
//

import UIKit
import SwiftyJSON
import Locksmith

class UserModel: NSObject {
    
    static var shared = UserModel()
    
    var id = 0
    var name = ""
    var email = ""
    var phone = ""
    
    var token = ""
    
    override init() {
        
    }
    
    init(json: JSON) {
        
        let userJSON = json["user"]
        token = json["token"].stringValue
        id = userJSON["id"].intValue
        name = userJSON["name"].stringValue
        email = userJSON["email"].stringValue
        phone = userJSON["phone"].stringValue
    }
    
    static func saveData(json: JSON) {
        //delete()
        try! Locksmith.saveData(data: json.dictionaryObject ?? [:], forUserAccount: "appdata")
    }
    
    static func loadData() {
        let dictionary = Locksmith.loadDataForUserAccount(userAccount: "appdata")
        UserModel.shared = UserModel(json: JSON(dictionary ?? [:]))
    }
    
    static func delete() {
        try! Locksmith.deleteDataForUserAccount(userAccount: "appdata")
    }
    
}
