//
//  HomeFavoritesTableViewCell.swift
//  MyProject
//
//  Created by Le Manh on 10/10/20.
//  Copyright © 2020 Le Manh. All rights reserved.
//

import UIKit

class HomeFavoritesTableViewCell: UITableViewCell {

    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.alignment = .center
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var houseImageView: UIImageView = {
        var imageview = UIImageView()
        imageview.layer.cornerRadius = 5
        imageview.clipsToBounds = true
        imageview.image = UIImage(named: "image_house")
        imageview.widthAnchor.constraint(equalToConstant: 70).isActive = true
        imageview.heightAnchor.constraint(equalTo: imageview.widthAnchor, multiplier: 1).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var titleStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.alignment = .leading
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var titlelabel: UILabel = {
        var label = UILabel()
        label.text = "Võng thị 10"
        label.numberOfLines = 2
        label.font = .boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subtitleLabel: UILabel = {
        var label = UILabel()
        label.text = "so 84 ngo 44 tran thai tong, dich vong hau, cau giay,ha noi"
        label.textColor = .lightGray
        label.numberOfLines = 2
        label.font = .systemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
        setupConstrants()
    }
    func setupUI(){
        self.selectionStyle = .none
        self.accessoryType = .disclosureIndicator
        self.addSubview(stackView)
        stackView.addArrangedSubview(houseImageView)
        stackView.addArrangedSubview(titleStackView)
        titleStackView.addArrangedSubview(titlelabel)
        titleStackView.addArrangedSubview(subtitleLabel)
    }
    func setupConstrants(){
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
        ])
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
