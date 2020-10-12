//
//  ToSendNotiViewController.swift
//  MyProject
//
//  Created by Le Manh on 10/1/20.
//  Copyright © 2020 Le Manh. All rights reserved.
//

import UIKit

class ToSendNotiViewController: UIViewController {


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }
    func setupUI(){
        
    }
    func setupConstraints(){
        
    }
}
