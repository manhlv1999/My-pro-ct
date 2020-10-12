//
//  AccountTableViewCell.swift
//  MyProject
//
//  Created by Le Manh on 9/29/20.
//  Copyright © 2020 Le Manh. All rights reserved.
//

import UIKit

class AccountTableViewCell: UITableViewCell {
    
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.distribution = .fill
        stackview.axis = .horizontal
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var iconImageView: UIImageView = {
        var imageview = UIImageView()
        imageview.image = UIImage(named: "icon_signout")
        imageview.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imageview.heightAnchor.constraint(equalTo: imageview.widthAnchor, multiplier: 1).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "Nhà đã lưu"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
        setupConstraints()
    }
    func setupUI(){
        self.selectionStyle = .none
        self.accessoryType = .disclosureIndicator
        self.addSubview(stackView)
        stackView.addArrangedSubview(iconImageView)
        stackView.addArrangedSubview(titleLabel)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0)
        ])
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
