//
//  HomeFavoriteViewController.swift
//  MyProject
//
//  Created by Le Manh on 10/7/20.
//  Copyright © 2020 Le Manh. All rights reserved.
//

import UIKit

class HomeFavoriteViewController: UIViewController {
    
    var tabelView: UITableView = {
        var tableview = UITableView()
        tableview.rowHeight = UITableView.automaticDimension
        tableview.estimatedRowHeight = 200
        tableview.register(HomeFavoritesTableViewCell.self, forCellReuseIdentifier: "HomeFavoritesTableViewCell")
        tableview.translatesAutoresizingMaskIntoConstraints = false
        return tableview
    }()

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }
    @objc func doBackButton (){
        self.navigationController?.popViewController(animated: true)
    }
    func setupUI(){
        view.backgroundColor = .white
        title = "NHÀ YÊU THÍCH"
        let backButton = UIBarButtonItem(image: UIImage(named: "icon_back"), style: .done, target: self, action: #selector(doBackButton))
        navigationItem.leftBarButtonItem = backButton
        view.addSubview(tabelView)
        tabelView.delegate = self
        tabelView.dataSource = self
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            tabelView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tabelView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tabelView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            tabelView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
}
extension HomeFavoriteViewController: UITableViewDelegate {
    
}
extension HomeFavoriteViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeFavoritesTableViewCell", for: indexPath) as! HomeFavoritesTableViewCell
        return cell
    }
    
    
}
