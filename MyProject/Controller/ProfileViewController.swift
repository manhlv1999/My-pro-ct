//
//  ProfileViewController.swift
//  MyProject
//
//  Created by Le Manh on 10/8/20.
//  Copyright © 2020 Le Manh. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    var navView: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor(red: 24/255, green: 173/255, blue: 120/255, alpha: 1)
        view.layer.cornerRadius = 20
        view.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var barSstackView: UIStackView = {
        var stackview = UIStackView()
        stackview.distribution = .fill
        stackview.alignment = .center
        stackview.axis = .horizontal
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var backButton: UIButton = {
        var button = UIButton()
        button.tintColor = .white
        button.widthAnchor.constraint(equalToConstant: 24).isActive = true
        button.setImage(UIImage(named: "icon_back"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "THÔNG TIN CÁ NHÂN"
        label.addCharacterSpacing()
        label.textAlignment = .center
        label.textColor = .white
        label.font = .systemFont(ofSize: 21)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var updateButton: UIButton = {
        var button = UIButton()
        button.tintColor = .white
        button.setImage(UIImage(named: "icon_pen"), for: .normal)
        button.widthAnchor.constraint(equalToConstant: 24).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var profileStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.alignment = .center
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var avatarImageView: UIImageView = {
        var imageview = UIImageView()
        imageview.widthAnchor.constraint(equalToConstant: 120).isActive = true
        imageview.heightAnchor.constraint(equalTo: imageview.widthAnchor, multiplier: 1).isActive = true
        imageview.layer.cornerRadius = 10
        imageview.clipsToBounds = true
        imageview.backgroundColor = UIColor(red: 24/255, green: 173/255, blue: 120/255, alpha: 1)
        imageview.image = UIImage(named: "image_avatar")
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var nameLabel: UILabel = {
        var label = UILabel()
        label.text = "Lê Viết Mạnh"
        label.textColor = .white
        label.addCharacterSpacing()
        label.font = .systemFont(ofSize: 19)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subNameLabel: UILabel = {
        var label = UILabel()
        label.textColor = .white
        label.text = "Khách thuê"
        label.addCharacterSpacing()
        label.font = .systemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var scrollView: UIScrollView = {
        var scrollview = UIScrollView()
        scrollview.backgroundColor = .clear
        scrollview.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        scrollview.translatesAutoresizingMaskIntoConstraints = false
        return scrollview
    }()
    var basicInfoView: UIView = {
        var view = UIView()
        view.layer.cornerRadius = 10
        view.layer.borderWidth = 0.5
        view.backgroundColor = .clear
        view.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 20).isActive = true
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var basicInfoStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.spacing = 20
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var infoLabel: UILabel = {
        var label = UILabel()
        label.text = "THÔNG TIN CƠ BẢN"
        label.addCharacterSpacing()
        label.font = .systemFont(ofSize: 21)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let item1 = LineView()
    var phoneStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.distribution = .fill
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var phoneLabel: UILabel = {
        var label = UILabel()
        label.text = "Số điện thoại"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subPhoneLabel: UILabel = {
        var label = UILabel()
        label.text = "0856985808"
        label.font = .boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var emailStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.distribution = .fill
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var emailLabel: UILabel = {
        var label = UILabel()
        label.text = "Email"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subEmailLabel: UILabel = {
        var label = UILabel()
        label.text = "lemanhht123@gmail.com"
        label.font = .boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var birthdayStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.distribution = .fill
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var birthdayLabel: UILabel = {
        var label = UILabel()
        label.text = "Ngày sinh"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subBirthdayLabel: UILabel = {
        var label = UILabel()
        label.text = ""
        label.font = .boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var addressStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.distribution = .fill
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var addressLabel: UILabel = {
        var label = UILabel()
        label.text = "Địa chỉ"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subAddressLabel: UILabel = {
        var label = UILabel()
        label.text = ""
        label.font = .boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var referralCodeView: UIView = {
        var view = UIView()
        view.layer.cornerRadius = 10
        view.layer.borderWidth = 0.5
        view.backgroundColor = .clear
        view.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 20).isActive = true
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var referralCodeStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.spacing = 15
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var referralCodeLabel: UILabel = {
        var label = UILabel()
        label.text = "MÃ GIỚI THIỆU CỦA BẠN"
        label.addCharacterSpacing()
        label.font = .systemFont(ofSize: 21)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let item2 = LineView()
    var referralStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.distribution = .fill
        stackview.spacing = 5
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var referralLabel: UILabel = {
        var label = UILabel()
        label.text = "Mã giới thiệu:"
        label.widthAnchor.constraint(equalToConstant: 110).isActive = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var codeLabel: UILabel = {
        var label = UILabel()
        label.text = "76we7j"
        label.font = .boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var copyButton: UIButton = {
        var button = UIButton()
        button.setTitle("Sao chép", for: .normal)
        button.layer.borderWidth = 0.5
        button.layer.cornerRadius = 5
        button.titleLabel?.font = .systemFont(ofSize: 15)
        button.setTitleColor(UIColor.black, for: .normal)
        button.widthAnchor.constraint(equalToConstant: 70).isActive = true
        button.heightAnchor.constraint(equalToConstant: 30).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let item3 = LineView()
    var importCodeStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.distribution = .fill
        stackview.axis = .horizontal
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var importCodeLabel: UILabel = {
        var label = UILabel()
        label.text = "Nhập mã giới thiệu"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var nextButton: UIButton = {
        var button = UIButton()
        button.tintColor = .black
        button.setImage(UIImage(named: "icon_next"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let item4 = LineView()
    var shareStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.distribution = .fill
        stackview.spacing = 5
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var shareLabel: UILabel = {
        var label = UILabel()
        label.text = "Chia sẻ:"
        label.widthAnchor.constraint(equalToConstant: 70).isActive = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var linkLabel: UILabel = {
        var label = UILabel()
        label.text = "http://itro.vn"
        label.font = .boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var shareButton: UIButton = {
        var button = UIButton()
        button.setTitle("Chia sẻ", for: .normal)
        button.layer.borderWidth = 0.5
        button.layer.cornerRadius = 5
        button.titleLabel?.font = .systemFont(ofSize: 15)
        button.setTitleColor(UIColor.black, for: .normal)
        button.widthAnchor.constraint(equalToConstant: 60).isActive = true
        button.heightAnchor.constraint(equalToConstant: 30).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let item5 = LineView()
    var historyStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.distribution = .fill
        stackview.axis = .horizontal
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var historyLabel: UILabel = {
        var label = UILabel()
        label.text = "Xem lịch sử giới thiệu"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var nextButtons: UIButton = {
        var button = UIButton()
        button.tintColor = .black
        button.setImage(UIImage(named: "icon_next"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var actView: UIView = {
        var view = UIView()
        view.layer.cornerRadius = 10
        view.layer.borderWidth = 0.5
        view.backgroundColor = .clear
        view.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 20).isActive = true
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let item6 = LineView()
    var actStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var actLabel: UILabel = {
        var label = UILabel()
        label.text = "HÀNH ĐỘNG"
        label.addCharacterSpacing()
        label.font = .systemFont(ofSize: 21)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let item7 = LineView()
    var rePassStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.distribution = .fill
        stackview.axis = .horizontal
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var rePassLabel: UILabel = {
        var label = UILabel()
        label.text = "Đổi mật khẩu"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var nextButton2: UIButton = {
        var button = UIButton()
        button.tintColor = .black
        button.setImage(UIImage(named: "icon_next"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var logOutStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.distribution = .fill
        stackview.axis = .horizontal
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var logOutLabel: UILabel = {
        var label = UILabel()
        label.text = "Đăng xuất"
        label.textColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var logOutButton: UIButton = {
        var button = UIButton()
        button.tintColor = .black
        button.setImage(UIImage(named: "icon_next"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    @objc func doBackButton(){
        self.navigationController?.popViewController(animated: true)
    }
    @objc func doUpdateProfileButton(){
        let updateProfileViewController = UpdateProfileViewController()
        present(updateProfileViewController, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }
    func setupUI(){
        view.backgroundColor = .white
        view.addSubview(navView)
        navView.addSubview(barSstackView)
        barSstackView.addArrangedSubview(backButton)
        barSstackView.addArrangedSubview(titleLabel)
        barSstackView.addArrangedSubview(updateButton)
        navView.addSubview(profileStackView)
        profileStackView.addArrangedSubview(avatarImageView)
        profileStackView.addArrangedSubview(nameLabel)
        profileStackView.addArrangedSubview(subNameLabel)
        view.addSubview(scrollView)
        scrollView.addSubview(basicInfoView)
        basicInfoView.addSubview(basicInfoStackView)
        basicInfoStackView.addArrangedSubview(infoLabel)
        basicInfoStackView.addArrangedSubview(item1)
        basicInfoStackView.addArrangedSubview(phoneStackView)
        phoneStackView.addArrangedSubview(phoneLabel)
        phoneStackView.addArrangedSubview(subPhoneLabel)
        basicInfoStackView.addArrangedSubview(emailStackView)
        emailStackView.addArrangedSubview(emailLabel)
        emailStackView.addArrangedSubview(subEmailLabel)
        basicInfoStackView.addArrangedSubview(birthdayStackView)
        birthdayStackView.addArrangedSubview(birthdayLabel)
        birthdayStackView.addArrangedSubview(subBirthdayLabel)
        basicInfoStackView.addArrangedSubview(addressStackView)
        addressStackView.addArrangedSubview(addressLabel)
        addressStackView.addArrangedSubview(subAddressLabel)
        scrollView.addSubview(referralCodeView)
        referralCodeView.addSubview(referralCodeStackView)
        referralCodeStackView.addArrangedSubview(referralCodeLabel)
        referralCodeStackView.addArrangedSubview(item2)
        referralCodeStackView.addArrangedSubview(referralStackView)
        referralStackView.addArrangedSubview(referralLabel)
        referralStackView.addArrangedSubview(codeLabel)
        referralStackView.addArrangedSubview(copyButton)
        referralCodeStackView.addArrangedSubview(item3)
        referralCodeStackView.addArrangedSubview(importCodeStackView)
        importCodeStackView.addArrangedSubview(importCodeLabel)
        importCodeStackView.addArrangedSubview(nextButton)
        referralCodeStackView.addArrangedSubview(item4)
        referralCodeStackView.addArrangedSubview(shareStackView)
        shareStackView.addArrangedSubview(shareLabel)
        shareStackView.addArrangedSubview(linkLabel)
        shareStackView.addArrangedSubview(shareButton)
        referralCodeStackView.addArrangedSubview(item5)
        referralCodeStackView.addArrangedSubview(historyStackView)
        historyStackView.addArrangedSubview(historyLabel)
        historyStackView.addArrangedSubview(nextButtons)
        scrollView.addSubview(actView)
        actView.addSubview(actStackView)
        actStackView.addArrangedSubview(actLabel)
        actStackView.addArrangedSubview(item6)
        actStackView.addArrangedSubview(rePassStackView)
        rePassStackView.addArrangedSubview(rePassLabel)
        rePassStackView.addArrangedSubview(nextButton2)
        actStackView.addArrangedSubview(item7)
        actStackView.addArrangedSubview(logOutStackView)
        logOutStackView.addArrangedSubview(logOutLabel)
        logOutStackView.addArrangedSubview(logOutButton)
        
        
        backButton.addTarget(self, action: #selector(doBackButton), for: .touchUpInside)
        updateButton.addTarget(self, action: #selector(doUpdateProfileButton), for: .touchUpInside)
        
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            navView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            navView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            navView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            
            barSstackView.leadingAnchor.constraint(equalTo: navView.leadingAnchor, constant: 20),
            barSstackView.trailingAnchor.constraint(equalTo: navView.trailingAnchor, constant: -20),
            barSstackView.topAnchor.constraint(equalTo: navView.topAnchor, constant: 50),
            
            profileStackView.leadingAnchor.constraint(equalTo: navView.leadingAnchor, constant: 20),
            profileStackView.trailingAnchor.constraint(equalTo: navView.trailingAnchor, constant: -20),
            profileStackView.topAnchor.constraint(equalTo: barSstackView.bottomAnchor, constant: 20),
            profileStackView.bottomAnchor.constraint(equalTo: navView.bottomAnchor, constant: -20),
            
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            scrollView.topAnchor.constraint(equalTo: navView.bottomAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            basicInfoView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 0),
//            basicInfoView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10),
//            basicInfoView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -10),
            basicInfoView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 10),
            
            basicInfoStackView.leadingAnchor.constraint(equalTo: basicInfoView.leadingAnchor, constant: 10),
            basicInfoStackView.trailingAnchor.constraint(equalTo: basicInfoView.trailingAnchor, constant: -10),
            basicInfoStackView.topAnchor.constraint(equalTo: basicInfoView.topAnchor, constant: 10),
            basicInfoStackView.bottomAnchor.constraint(equalTo: basicInfoView.bottomAnchor, constant: -20),
            
            referralCodeView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 0),
            referralCodeView.topAnchor.constraint(equalTo: basicInfoView.bottomAnchor, constant: 10),
            
            referralCodeStackView.leadingAnchor.constraint(equalTo: referralCodeView.leadingAnchor, constant: 10),
            referralCodeStackView.trailingAnchor.constraint(equalTo: referralCodeView.trailingAnchor, constant: -10),
            referralCodeStackView.topAnchor.constraint(equalTo: referralCodeView.topAnchor, constant: 10),
            referralCodeStackView.bottomAnchor.constraint(equalTo: referralCodeView.bottomAnchor, constant: -20),
            
            actView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 0),
            actView.topAnchor.constraint(equalTo: referralCodeView.bottomAnchor, constant: 10),
            actView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -0),
            
            actStackView.leadingAnchor.constraint(equalTo: actView.leadingAnchor, constant: 10),
            actStackView.trailingAnchor.constraint(equalTo: actView.trailingAnchor, constant: -10),
            actStackView.topAnchor.constraint(equalTo: actView.topAnchor, constant: 10),
            actStackView.bottomAnchor.constraint(equalTo: actView.bottomAnchor, constant: -20),
        ])
    }
    
}
