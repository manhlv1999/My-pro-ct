
import UIKit
import AuthenticationServices
import Alamofire
import SwiftyJSON
import Toast_Swift
import NVActivityIndicatorView

class LoginViewController: UIViewController {
    
    var imageView: UIImageView = {
        var imageview = UIImageView()
        imageview.image = UIImage(named: "image_login")
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var loginView: UIView = {
        var view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 30
        view.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var loginLabel: UILabel = {
        var label = UILabel()
        label.text = "ĐĂNG NHẬP"
        label.addCharacterSpacing()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var textFieldView: UIView = {
        var view = UIView()
        view.layer.borderColor = UIColor.gray.cgColor
        view.layer.cornerRadius = 5
        view.layer.borderWidth = 0.5
        view.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 60).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var textFieldStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.alignment = .center
        stackview.distribution = .fill
        stackview.axis = .vertical
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var lineView: UIView = {
        var view = UIView()
        view.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        view.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 60).isActive = true
        view.backgroundColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var lineViews: UIView = {
        var view = UIView()
        view.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        view.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 60).isActive = true
        view.backgroundColor = .gray
        view.layer.borderWidth = 0.2
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var phoneTextField: UITextField = {
        var textfield = UITextField()
        textfield.placeholder = "Số Điện Thoại"
        textfield.borderStyle = .none
        textfield.keyboardType = .numberPad
        textfield.setLeftPaddingPoints(15)
        textfield.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 60).isActive = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    var passwordTextField: UITextField = {
        var textfield = UITextField()
        textfield.placeholder = "Mật Khẩu"
        textfield.borderStyle = .none
        textfield.isSecureTextEntry = true
        textfield.setLeftPaddingPoints(15)
        textfield.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 60).isActive = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    var optionTextField: UITextField = {
        var textfield = UITextField()
        let button = UIButton()
        button.setImage(UIImage(named: "down_arrow"), for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
        textfield.text = "Quản lý"
        textfield.setLeftPaddingPoints(15)
        textfield.borderStyle = .none
        textfield.rightViewMode = .always
        textfield.rightView = button
        textfield.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 60).isActive = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    var loginButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = UIColor(red: 250/255, green: 120/255, blue: 67/255, alpha: 1)
        button.setTitle("ĐĂNG NHẬP", for: .normal)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = .boldSystemFont(ofSize: 15)
        button.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 60).isActive = true
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "Hoặc đăng nhập/đăng ký bằng"
        label.textColor = .darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var methodsLoginStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.distribution = .fillEqually
        stackview.spacing = 12
        stackview.axis = .horizontal
        stackview.alignment = .center
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var otpButton: UIButton = {
        var button = UIButton()
        button.setTitle("OTP", for: .normal)
        button.layer.cornerRadius = 10
        button.setTitleColor(UIColor.black, for: .highlighted)
        button.titleLabel?.font = .systemFont(ofSize: 15)
        button.backgroundColor = UIColor(red: 47/255, green: 189/255, blue: 177/255, alpha: 1)
        button.widthAnchor.constraint(equalToConstant: 50).isActive = true
        button.heightAnchor.constraint(equalTo: button.widthAnchor, multiplier: 1).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var facebookButton: UIButton = {
        var button = UIButton()
        button.layer.cornerRadius = 10
        button.tintColor = .white
        button.setImageTintColor(UIColor.white)
        button.setImage(UIImage(named: "icon_facebook"), for: .normal)
        button.backgroundColor = UIColor(red: 68/255, green: 105/255, blue: 178/255, alpha: 1)
        button.widthAnchor.constraint(equalToConstant: 50).isActive = true
        button.heightAnchor.constraint(equalTo: button.widthAnchor, multiplier: 1).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var zaloButton: UIButton = {
        var button = UIButton()
        button.layer.cornerRadius = 10
        button.setImageTintColor(UIColor.white)
        button.tintColor = .white
        button.setImage(UIImage(named: "icon_zalo"), for: .normal)
        button.backgroundColor = UIColor(red: 111/255, green: 167/255, blue: 252/255, alpha: 1)
        button.widthAnchor.constraint(equalToConstant: 50).isActive = true
        button.heightAnchor.constraint(equalTo: button.widthAnchor, multiplier: 1).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var appleButton: ASAuthorizationAppleIDButton = {
        var button = ASAuthorizationAppleIDButton()
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.heightAnchor.constraint(equalTo: button.widthAnchor, multiplier: 1).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        phoneTextField.resignFirstResponder()
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        phoneTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    @objc func doOTPButton(){
        let otpViewController = LoginOTPViewController()
        self.navigationController?.pushViewController(otpViewController, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }
    @objc func loginData(){
        
        self.view.endEditing(true)
        
        // check data
        if phoneTextField.text!.isEmpty {
            self.view.makeToast("Vui lòng nhập số điện thoại")
        }
        if passwordTextField.text!.isEmpty {
            self.view.makeToast("Vui lòng nhập mật khẩu")
        }
                
        // show loading
        let loading = NVActivityIndicatorView(frame: .zero, type: .semiCircleSpin, color: UIColor.black, padding: 4)
        loading.startAnimating()
        
        AppService.login(phone: phoneTextField.text ?? "", password: passwordTextField.text ?? "", completion: {
            /// thành công
            loading.stopAnimating()
            UIApplication.shared.currentWindow?.rootViewController = TabBarViewController()
            
        }) { (error) in
            self.view.makeToast(error.localizedDescription)
        }
        
    }
    func setupUI(){
        view.addSubview(imageView)
        view.addSubview(loginView)
        loginView.addSubview(loginLabel)
        loginLabel.addSubview(textFieldView)
        loginView.addSubview(textFieldStackView)
        textFieldStackView.addArrangedSubview(phoneTextField)
        textFieldStackView.addArrangedSubview(lineView)
        textFieldStackView.addArrangedSubview(passwordTextField)
        textFieldStackView.addArrangedSubview(lineViews)
        loginView.addSubview(loginButton)
        textFieldStackView.addArrangedSubview(optionTextField)
        loginView.addSubview(titleLabel)
        loginView.addSubview(methodsLoginStackView)
        methodsLoginStackView.addArrangedSubview(otpButton)
        methodsLoginStackView.addArrangedSubview(facebookButton)
        methodsLoginStackView.addArrangedSubview(zaloButton)
        methodsLoginStackView.addArrangedSubview(appleButton)
        
        hideKeyBoardWhenTapped()
        loginButton.addTarget(self, action: #selector(loginData), for: .touchUpInside)
        otpButton.addTarget(self, action: #selector(doOTPButton), for: .touchUpInside)
        
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            loginView.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 0),
            loginView.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 0),
            loginView.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 0),
            
            loginLabel.topAnchor.constraint(equalTo: loginView.topAnchor, constant: 20),
            loginLabel.centerXAnchor.constraint(equalTo: loginView.centerXAnchor, constant: 0),
            
            textFieldView.centerXAnchor.constraint(equalTo: loginView.centerXAnchor, constant: 0),
            textFieldView.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 20),
            
            textFieldStackView.leadingAnchor.constraint(equalTo: textFieldView.leadingAnchor, constant: 0),
            textFieldStackView.trailingAnchor.constraint(equalTo: textFieldView.trailingAnchor, constant: 0),
            textFieldStackView.topAnchor.constraint(equalTo: textFieldView.topAnchor, constant: 0),
            textFieldStackView.bottomAnchor.constraint(equalTo: textFieldView.bottomAnchor, constant: 0),
            
            loginButton.centerXAnchor.constraint(equalTo: loginView.centerXAnchor, constant: 0),
            loginButton.topAnchor.constraint(equalTo: textFieldStackView.bottomAnchor, constant: 15),
            
            titleLabel.centerXAnchor.constraint(equalTo: loginView.centerXAnchor, constant: 0),
            titleLabel.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10),
            
            methodsLoginStackView.centerXAnchor.constraint(equalTo: loginView.centerXAnchor, constant: 0),
            methodsLoginStackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            methodsLoginStackView.bottomAnchor.constraint(equalTo: loginView.bottomAnchor, constant: -40)
        ])
    }
}

//extension LoginViewController: UITextFieldDelegate {
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        let invalidCharacters = CharacterSet(charactersIn: "+0123456789").inverted
//        return string.rangeOfCharacter(from: invalidCharacters) == nil
//    }
//}
