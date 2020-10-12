//
//  SearchHeaaderView.swift
//  MyProject
//
//  Created by Le Manh on 9/28/20.
//  Copyright © 2020 Le Manh. All rights reserved.
//

import UIKit

class SearchHeaaderView: UICollectionReusableView {
    
    var titleLabel: UILabel = {
        var label = UILabel()
        label.font = .boldSystemFont(ofSize: 17)
        label.text = "QUẬN/HUYỆN TÌM KIẾM NHIỀU"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        setupConstraints()
    }
    func setupUI(){
        self.addSubview(titleLabel)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
        ])
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
