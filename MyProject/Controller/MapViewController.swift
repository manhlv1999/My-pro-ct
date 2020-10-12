//
//  MapViewController.swift
//  MyProject
//
//  Created by Le Manh on 9/28/20.
//  Copyright © 2020 Le Manh. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }
    func setupUI(){
        view.backgroundColor = .white
    }
    func setupConstraints(){
        
    }

}
