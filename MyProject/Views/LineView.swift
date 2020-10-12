//
//  LineView.swift
//  MyProject
//
//  Created by Le Manh on 10/8/20.
//  Copyright © 2020 Le Manh. All rights reserved.
//

import UIKit

class LineView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        self.backgroundColor = .lightGray
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

}
