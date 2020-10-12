//
//  SplashViewController.swift
//  MyProject
//
//  Created by Le Manh on 10/2/20.
//  Copyright © 2020 Le Manh. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UserModel.loadData()
        if UserModel.shared.token.isEmpty {
            UIApplication.shared.currentWindow?.rootViewController = UINavigationController(rootViewController: LoginViewController())
        } else {
            UIApplication.shared.currentWindow?.rootViewController = TabBarViewController()
        }
    }
}
