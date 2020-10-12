import UIKit

class AppService: BaseService {
    
    static func login(phone: String, password: String, completion: @escaping() -> Void, failure: @escaping AppServiceFailure) {
        sendRequest(path: "/api/v1/login", method: .post, params: ["phone": phone, "password": password, "app_type": "OWNER"], completion: { response in
            UserModel.shared = UserModel(json: response)
            UserModel.saveData(json: response)
            completion()
        }, failure: failure)
    }
    
    static func getAccounts(phone: String, completion: @escaping([UserModel]) -> Void, failure: @escaping AppServiceFailure) {
        
        //+84123456789 -> 0123456789
        var formattedPhone = phone
        if phone.contains("+84") {
            let index = phone.index(phone.endIndex, offsetBy: 3 - phone.count)
            formattedPhone = "0" + phone[index...]
        }
        print(formattedPhone)
        
        sendRequest(path: "/api/v2/account/current-account-list", method: .get, params: ["phone": formattedPhone], completion: { (response) in
            UserModel.shared = UserModel(json: response)
            completion([])
        }, failure: failure)
    }
}
