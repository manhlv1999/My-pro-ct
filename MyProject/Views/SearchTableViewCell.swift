//
//  SearchTableViewCell.swift
//  MyProject
//
//  Created by Le Manh on 10/1/20.
//  Copyright © 2020 Le Manh. All rights reserved.
//

import UIKit

class SearchTableViewCell: UITableViewCell {

   var  houseImageView: UIImageView = {
        var imageview = UIImageView()
        imageview.image = UIImage(named: "icon_house")
        imageview.layer.cornerRadius = 10
        imageview.clipsToBounds = true
        imageview.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageview.heightAnchor.constraint(equalTo: imageview.widthAnchor, multiplier: 1).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.distribution = .fill
        stackview.axis = .vertical
        stackview.alignment = .leading
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.numberOfLines = 2
        label.font = .systemFont(ofSize: 15)
        label.text = "Phòng trọ rộng 30m2 tại Long biên phòng đẹp sạch sẽ giá thuê hợp lý"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var princeLabel: UILabel = {
        var label = UILabel()
        label.textColor = UIColor(red: 33/255, green: 189/255, blue: 176/255, alpha: 1)
        label.text = "3.8 Triệu"
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subTitleLabel: UILabel = {
        var label = UILabel()
        label.font = .systemFont(ofSize: 13)
        label.textColor = .gray
        label.text = "Số nhà 23, ngõ 532/23, tổ 20, Ngọc Thuỵ, Tây Hồ , Hà Nội"
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
        self.accessoryType = .none
        self.addSubview(houseImageView)
        self.addSubview(stackView)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(princeLabel)
        stackView.addArrangedSubview(subTitleLabel)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            houseImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            houseImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            houseImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            
            stackView.leadingAnchor.constraint(equalTo: houseImageView.trailingAnchor, constant: 10),
            stackView.topAnchor.constraint(equalTo: houseImageView.topAnchor, constant: 0),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            stackView.bottomAnchor.constraint(equalTo: houseImageView.bottomAnchor, constant: 0)
        ])
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
