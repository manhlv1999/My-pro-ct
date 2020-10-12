//
//  TakeNotiViewController.swift
//  MyProject
//
//  Created by Le Manh on 10/1/20.
//  Copyright © 2020 Le Manh. All rights reserved.
//

import UIKit

class TakeNotiViewController: UIViewController {
    
    var tableView: UITableView = {
        var tableview = UITableView()
        tableview.rowHeight = UITableView.automaticDimension
        tableview.estimatedRowHeight = 200
        tableview.tableFooterView = UIView()
        tableview.register(TakeNotiTableViewCell.self, forCellReuseIdentifier: "TakeNotiTableViewCell")
        tableview.translatesAutoresizingMaskIntoConstraints = false
        return tableview
    }()

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
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
        ])
    }
}
extension TakeNotiViewController: UITableViewDelegate{
    
}
extension TakeNotiViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TakeNotiTableViewCell", for: indexPath) as! TakeNotiTableViewCell
        return cell
    }
    
    
}
