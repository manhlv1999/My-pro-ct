
import UIKit
import BLTNBoard

class NotificationViewController: UIViewController {
    
    var navView: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor(red: 34/255, green: 182/255, blue: 135/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    var backButton: UIButton = {
        var button = UIButton()
        button.tintColor = .white
        button.setImage(UIImage(named: "icon_back"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "THÔNG BÁO"
        label.textColor = .white
        label.font = .systemFont(ofSize: 19)
        label.addCharacterSpacing()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var sentButton: UIButton = {
        var button = UIButton()
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true
        button.widthAnchor.constraint(equalTo: button.heightAnchor, multiplier: 1).isActive = true
        button.setTitle("GỬI", for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = UIColor(red: 250/255, green: 120/255, blue: 67/255, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var radioButtonStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.distribution = .fillEqually
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var takeButton: UIButton = {
        var button = UIButton()
        button.setTitle("Nhận", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitleColor(UIColor.black, for: .selected)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var toSendButton: UIButton = {
        var button = UIButton()
        button.setTitle("Gửi", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitleColor(UIColor.black, for: .selected)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var pageViewController = NoitiPageViewController()
    @objc func domoveTakeNoti(){
        pageViewController.setViewIndex(index: 0)
    }
    @objc func domoveToSendNoti(){
        pageViewController.setViewIndex(index: 1)
    }
    @objc func dosentButton(){
        let sendNotiViewController = SendNotiViewController()
        sendNotiViewController.hidesBottomBarWhenPushed = true
        present(sendNotiViewController, animated: true)
    }
    @objc func doBackButton(){
        self.navigationController?.popViewController(animated: true)
    }
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
        view.backgroundColor = .white
        view.addSubview(navView)
        navView.addSubview(backButton)
        navView.addSubview(titleLabel)
        navView.addSubview(sentButton)
        navView.addSubview(radioButtonStackView)
        radioButtonStackView.addArrangedSubview(takeButton)
        radioButtonStackView.addArrangedSubview(toSendButton)
        
        self.view.addSubview(pageViewController.view)
        pageViewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        backButton.addTarget(self, action: #selector(doBackButton), for: .touchUpInside)
        
        takeButton.addTarget(self, action: #selector(domoveTakeNoti), for: .touchUpInside)
        toSendButton.addTarget(self, action: #selector(domoveToSendNoti), for: .touchUpInside)
        sentButton.addTarget(self, action: #selector(dosentButton), for: .touchUpInside)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            navView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            navView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            navView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            
            titleLabel.centerXAnchor.constraint(equalTo: navView.centerXAnchor, constant: 0),
            titleLabel.centerYAnchor.constraint(equalTo: navView.centerYAnchor, constant: 0),
        
            backButton.leadingAnchor.constraint(equalTo: navView.leadingAnchor, constant: 10),
            backButton.centerYAnchor.constraint(equalTo: navView.centerYAnchor, constant: 0),
            
            sentButton.topAnchor.constraint(equalTo: navView.topAnchor, constant: 50),
            sentButton.trailingAnchor.constraint(equalTo: navView.trailingAnchor, constant: -10),
            sentButton.centerYAnchor.constraint(equalTo: navView.centerYAnchor, constant: 0),
            
            radioButtonStackView.leadingAnchor.constraint(equalTo: navView.leadingAnchor, constant: 10),
            radioButtonStackView.trailingAnchor.constraint(equalTo: navView.trailingAnchor, constant: -10),
            radioButtonStackView.topAnchor.constraint(equalTo: sentButton.bottomAnchor, constant: 20),
            radioButtonStackView.bottomAnchor.constraint(equalTo: navView.bottomAnchor, constant: -10),
            
            pageViewController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            pageViewController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            pageViewController.view.topAnchor.constraint(equalTo: self.navView.bottomAnchor, constant: 0),
            pageViewController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
        ])
    }
}
