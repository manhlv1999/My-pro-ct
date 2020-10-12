//
//  TakeNotiTableViewCell.swift
//  MyProject
//
//  Created by Le Manh on 10/1/20.
//  Copyright © 2020 Le Manh. All rights reserved.
//

import UIKit

class TakeNotiTableViewCell: UITableViewCell {

    var avatarImageView: UIImageView = {
        var imageview = UIImageView()
        imageview.widthAnchor.constraint(equalToConstant: 50).isActive = true
        imageview.heightAnchor.constraint(equalTo: imageview.widthAnchor, multiplier: 1).isActive = true
        imageview.image = UIImage(named: "image_avatar")
        imageview.layer.cornerRadius = 25
        imageview.clipsToBounds = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "Thông báo từ itro.vn"
        label.font = .boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subTitleLabel: UILabel = {
        var label = UILabel()
        label.text = "Hãy bảo vệ tài khoản và dữ liệu của bạn bàng việc xác thực số điện thoại ngay bây giờ"
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var timeLabel: UILabel = {
        var label = UILabel()
        label.text = "3 ngay truoc"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
        setupConstraints()
    }
    func setupUI(){
        self.addSubview(avatarImageView)
        self.addSubview(stackView)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(subTitleLabel)
        stackView.addArrangedSubview(timeLabel)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            avatarImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            
            stackView.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            stackView.topAnchor.constraint(equalTo: avatarImageView.topAnchor, constant: 0),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20),
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
