//
//  UIWindownExtension.swift
//  MyProject
//
//  Created by Le Manh on 9/30/20.
//  Copyright © 2020 Le Manh. All rights reserved.
//

import UIKit

extension UIApplication {
    var currentWindow: UIWindow? {
        connectedScenes
        .filter({$0.activationState == .foregroundActive})
        .map({$0 as? UIWindowScene})
        .compactMap({$0})
        .first?.windows
        .filter({$0.isKeyWindow}).first
    }
}
