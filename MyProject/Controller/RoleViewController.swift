
import UIKit

class RoleViewController: UIViewController {

    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.alignment = .center
        stackview.spacing = 20
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var backButton: UIButton = {
        var button = UIButton()
        button.layer.cornerRadius = 15
        button.tintColor = .white
        button.setImage(UIImage(named: "icon_back"), for: .normal)
        button.backgroundColor = UIColor(red: 70/255, green: 75/355, blue: 76/255, alpha: 0.3)
        button.widthAnchor.constraint(equalToConstant: 30).isActive = true
        button.heightAnchor.constraint(equalTo: button.widthAnchor, multiplier: 1).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var loginView: UIView = {
        var view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 30
        view.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "CHỌN VAI TRÒ"
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 19)
        label.numberOfLines = 0
        label.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40).isActive = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subTitleLabel: UILabel = {
        var label = UILabel()
        label.font = .systemFont(ofSize: 15)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40).isActive = true
        label.text = "Bạn hiện đang có các vai trò sau đây. Hãy chọn một vai trò để đăng nhập vào app nhé"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var optionView: UIView = {
        var view = UIView()
        view.layer.cornerRadius = 10
        
        view.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var optionStacView: UIStackView = {
        var stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let item1 = OptionView()
    
    let item2 = OptionView()
    
    
    var submitButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = UIColor(red: 250/255, green: 120/255, blue: 67/255, alpha: 1)
        button.setTitle("TRUY CẬP APP", for: .normal)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = .systemFont(ofSize: 15)
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true
        button.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var hostButton: UIButton = {
        var button = UIButton(type: .custom)
        button.setImage(UIImage(named: "icon_avatar"), for: .normal)
        button.setTitle("Chủ nhà", for: .normal)
        //button.backgroundColor = .lightGray
        button.layer.cornerRadius = 10
        button.titleLabel?.font = .systemFont(ofSize: 15)
        button.setTitleColor(UIColor.black, for: .normal)
        button.alignTextBelow(spacing: 2)
        button.contentVerticalAlignment = .center
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 100).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var tenantsButton: UIButton = {
        var button = UIButton(type: .custom)
        button.setImage(UIImage(named: "icon_avatar"), for: .normal)
        button.setTitle("Khách thuê", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15)
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 10
        button.alignTextBelow(spacing: 2)
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 100).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    @objc func doHostButton (_ sender: UIButton){
        if sender.isSelected {
            sender.isSelected = false
            print("Đã bỏ chọn chủ nhà")
            hostButton.backgroundColor = .clear
            tenantsButton.isSelected = false
        } else {
            sender.isSelected = true
            hostButton.backgroundColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1)
            print("Đã chọn chủ nhà")
            tenantsButton.isSelected = false
            tenantsButton.backgroundColor = .clear
        }
    }
    @objc func doTenantasButton (_ sender: UIButton){
        if sender.isSelected {
            tenantsButton.backgroundColor = .clear
            sender.isSelected = false
            print("Đã bỏ chọn khách thuê")
            
            hostButton.isSelected = false
        } else {
            sender.isSelected = true
            tenantsButton.backgroundColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1)
            print("Đã chọn khách thuê")
            hostButton.isSelected = false
            hostButton.backgroundColor = .clear
        }
    }
    @objc func doBackButton(){
        self.navigationController?.popViewController(animated: true)
    }
    @objc func doMoveHomeButton(){
        let tabBarController = TabBarViewController()
        self.navigationController?.pushViewController(tabBarController, animated: true)
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
        let layer = CAGradientLayer()
        layer.colors = [UIColor(red: 250/255, green: 174/255, blue: 157/255, alpha: 1).cgColor, UIColor(red: 231/255, green: 109/255, blue: 223/255, alpha: 1).cgColor]
        layer.frame = view.frame
        view.layer.addSublayer(layer)
        view.addSubview(loginView)
        view.addSubview(backButton)
        view.addSubview(optionView)
        optionView.addSubview(hostButton)
        optionView.addSubview(tenantsButton)
        optionView.addSubview(optionStacView)
        optionStacView.addArrangedSubview(hostButton)
        optionStacView.addArrangedSubview(tenantsButton)
        loginView.addSubview(stackView)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(subTitleLabel)
        loginView.addSubview(submitButton)
        submitButton.addTarget(self, action: #selector(doMoveHomeButton), for: .touchUpInside)
        backButton.addTarget(self, action: #selector(doBackButton), for: .touchUpInside)
        
        hostButton.addTarget(self, action: #selector(doHostButton(_:)), for: .touchUpInside)
        tenantsButton.addTarget(self, action: #selector(doTenantasButton(_:)), for: .touchUpInside)
        
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: UIScreen.main.bounds.height / 10),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            loginView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            loginView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            loginView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            stackView.centerXAnchor.constraint(equalTo: loginView.centerXAnchor, constant: 0),
            stackView.topAnchor.constraint(equalTo: loginView.topAnchor, constant: 40),
            
            optionView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 30),
            optionView.centerXAnchor.constraint(equalTo: loginView.centerXAnchor, constant: 0),
            
            optionStacView.leadingAnchor.constraint(equalTo: optionView.leadingAnchor, constant: 10),
            optionStacView.trailingAnchor.constraint(equalTo: optionView.trailingAnchor, constant: -10),
            optionStacView.topAnchor.constraint(equalTo: optionView.topAnchor, constant: 10),
            optionStacView.bottomAnchor.constraint(equalTo: optionView.bottomAnchor, constant: -10),
            
            submitButton.centerXAnchor.constraint(equalTo: loginView.centerXAnchor, constant: 0),
            submitButton.topAnchor.constraint(equalTo: optionView.bottomAnchor, constant: 30),
            submitButton.bottomAnchor.constraint(equalTo: loginView.bottomAnchor, constant: -40),
        ])
    }

}
extension UIButton {
    func alignTextBelow(spacing: CGFloat) {
        guard let image = self.imageView?.image else {
            return
        }

        guard let titleLabel = self.titleLabel else {
            return
        }

        guard let titleText = titleLabel.text else {
            return
        }

        let titleSize = titleText.size(withAttributes: [
            NSAttributedString.Key.font: titleLabel.font!
        ])

        titleEdgeInsets = UIEdgeInsets(top: spacing, left: -image.size.width, bottom: -image.size.height, right: 0)
        imageEdgeInsets = UIEdgeInsets(top: -(titleSize.height + spacing), left: 0, bottom: 0, right: -titleSize.width)
    }
}

