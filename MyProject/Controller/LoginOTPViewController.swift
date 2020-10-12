import UIKit
import Firebase
import Toast_Swift
import PhoneNumberKit

class LoginOTPViewController: UIViewController {
    
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
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.alignment = .center
        stackview.distribution = .fill
        stackview.spacing = 20
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var otpTextField: UITextField = {
        var textfield = UITextField()
        textfield.placeholder = "OTP"
        textfield.borderStyle = .roundedRect
        textfield.textAlignment = .center
        textfield.textColor = .red
        textfield.keyboardType = .numberPad
        textfield.defaultTextAttributes.updateValue(15.0, forKey: NSAttributedString.Key.kern)
        textfield.font = .systemFont(ofSize: 21)
        textfield.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 30).isActive = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.addCharacterSpacing()
        label.addCharacterSpacing()
        label.text = "ĐĂNG NHẬP VỚI SỐ ĐIỆN THOẠI"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var titleLabels: UILabel = {
        var label = UILabel()
        label.text = "XÁC THỰC SỐ ĐIỆN THOẠI"
        label.numberOfLines = 0
        label.font = .boldSystemFont(ofSize: 17)
        label.textAlignment = .center
        label.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 30).isActive = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subTitleLabel: UILabel = {
        var label = UILabel()
        label.textAlignment = .center
        label.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 30).isActive = true
        label.numberOfLines = 0
        label.text = "Chúng tôi sẻ gửi mã xác nhận về số điện thoại của bạn"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subTitleLabels: UILabel = {
        var label = UILabel()
        label.text = "Mã xác thực đã được gửi về số điện thoại"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subTitleLabelss: UILabel = {
        var label = UILabel()
        label.text = "Không nhận được mã. Gửi lại sau giây"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
        
    var phoneTextField: UITextField = {
        var textfield = UITextField()
        textfield.borderStyle = .roundedRect
        textfield.placeholder = "Số điện thoại"
        textfield.keyboardType = .numberPad
        textfield.textAlignment = .center
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 30).isActive = true
        textfield.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    var submitButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = UIColor(red: 250/255, green: 120/255, blue: 67/255, alpha: 1)
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true
        button.setTitle("GỬI MÃ XÁC NHẬN", for: .normal)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = .systemFont(ofSize: 15)
        button.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 30).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var optstackView: UIStackView = {
        var stackview  = UIStackView()
        stackview.axis = .horizontal
        stackview.distribution = .fillEqually
        stackview.spacing = 10
        stackview.alignment = .center
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var item1 = TextFieldView()
    var item2 = TextFieldView()
    var item3 = TextFieldView()
    var item4 = TextFieldView()
    var item5 = TextFieldView()
    var item6 = TextFieldView()
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    @objc func doBackButton(){
        self.navigationController?.popViewController(animated: true)
    }
    
    
    var verificationId: String? = nil
    @objc func doSubmitbutton(){
        if optstackView.isHidden {
            if phoneTextField.text!.isEmpty {
                print("Please enter phone number")
            } else {
                Auth.auth().settings?.isAppVerificationDisabledForTesting = false
                PhoneAuthProvider.provider(auth: Auth.auth())
               
                PhoneAuthProvider.provider().verifyPhoneNumber(phoneTextField.text!, uiDelegate: nil) { (verificationID, error) in
                    if error != nil {
                        let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
                        print(error.debugDescription)
                    } else {
                        UserDefaults.standard.set(verificationID, forKey: "authVerificationID")
                        UserDefaults.standard.synchronize()
                        self.submitButton.setTitle("XÁC THỰC", for: .normal)
                        self.verificationId = verificationID
                        self.subTitleLabels.isHidden = false
                        self.titleLabel.isHidden = true
                        self.subTitleLabelss.isHidden = false
                        self.subTitleLabel.isHidden = true
                        self.titleLabels.isHidden = false
                        self.phoneTextField.isHidden = true
                        self.optstackView.isHidden = false
                    }
                }
            }
        } else {
            if verificationId != nil {
                let verificationID  = UserDefaults.standard.value(forKey: "authVerificationID")
                let credential = PhoneAuthProvider.provider().credential(withVerificationID: verificationID as! String, verificationCode: item1.text! + item2.text! + item3.text! + item4.text! + item5.text! + item6.text!)
                Auth.auth().signIn(with: credential) { (authData, error) in
                    if error != nil {
                       print(error.debugDescription)
                        let alert = UIAlertController(title: "Error", message: "Please re-enter the OTP code", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
                    } else {
                        AppService.getAccounts(phone: self.phoneTextField.text ?? "", completion: { (response) in
                            print(response)
                            let roleViewController = RoleViewController()
                            self.navigationController?.pushViewController(roleViewController, animated: true)
                        }) { (error) in
                            print(error)
                        }
                    }
                }
            } else {
                print("Error in getting verification")
            }
        }
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
        optstackView.addArrangedSubview(item1)
        optstackView.addArrangedSubview(item2)
        optstackView.addArrangedSubview(item3)
        optstackView.addArrangedSubview(item4)
        optstackView.addArrangedSubview(item5)
        optstackView.addArrangedSubview(item6)
        loginView.addSubview(stackView)
        loginView.addSubview(titleLabel)
        stackView.addArrangedSubview(subTitleLabel)
        stackView.addArrangedSubview(phoneTextField)
        stackView.addArrangedSubview(titleLabels)
        stackView.addArrangedSubview(subTitleLabels)
        stackView.addArrangedSubview(otpTextField)
        stackView.addArrangedSubview(optstackView)
        stackView.addArrangedSubview(subTitleLabelss)
        stackView.addArrangedSubview(submitButton)
        hideKeyBoardWhenTapped()
        
        item1.delegate = self
        item2.delegate = self
        item3.delegate = self
        item4.delegate = self
        item5.delegate = self
        item6.delegate = self
        
        otpTextField.isHidden = true
        titleLabels.isHidden = true
        subTitleLabels.isHidden = true
        subTitleLabelss.isHidden = true
        optstackView.isHidden = true
        
        backButton.addTarget(self, action: #selector(doBackButton), for: .touchUpInside)
        submitButton.addTarget(self, action: #selector(doSubmitbutton), for: .touchUpInside)
                
        phoneTextField.text = PartialFormatter(phoneNumberKit: PhoneNumberKit(), defaultRegion: "VN", withPrefix: true, maxDigits: 10).formatPartial(phoneTextField.text ?? "")
        
//        let phoneNunberKit = PhoneNumberKit()
//        do {
//            let phonenuber = try phoneNunberKit.parse(phoneTextField.text ?? "")
           // phoneNunberKit.format(phonenuber, toType: .national)
//        }
//        catch let error {
//            print(error)
//        }
        
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: UIScreen.main.bounds.height / 10),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            loginView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            loginView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            loginView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            titleLabel.centerXAnchor.constraint(equalTo: loginView.centerXAnchor, constant: 0),
            titleLabel.topAnchor.constraint(equalTo: loginView.topAnchor, constant: 40),
            
            stackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            stackView.centerXAnchor.constraint(equalTo: loginView.centerXAnchor, constant: 0),
            stackView.leadingAnchor.constraint(equalTo: loginView.leadingAnchor, constant: 0),
            stackView.bottomAnchor.constraint(equalTo: loginView.bottomAnchor, constant: -40),
            
        ])
    }
    
}
extension LoginOTPViewController: UITextFieldDelegate {
        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            if ((textField.text?.count)! < 1 ) && (string.count > 0) {
                if textField == item1 {
                    item2.becomeFirstResponder()
                }
                
                if textField == item2 {
                    item3.becomeFirstResponder()
                }
                
                if textField == item3 {
                    item4.becomeFirstResponder()
                }
                
                if textField == item4 {
                    item5.becomeFirstResponder()
                }
                if textField == item5 {
                    item6.becomeFirstResponder()
                }
                if textField == item6 {
                    item6.resignFirstResponder()
                }
                
                textField.text = string
                return false
            } else if ((textField.text?.count)! >= 1) && (string.count == 0) {
                if textField == item2 {
                    item1.becomeFirstResponder()
                }
                if textField == item3 {
                    item2.becomeFirstResponder()
                }
                if textField == item4 {
                    item3.becomeFirstResponder()
                }
                if textField == item5 {
                    item4.becomeFirstResponder()
                }
                if textField == item6 {
                    item5.becomeFirstResponder()
                }
                if textField == item1 {
                    item1.resignFirstResponder()
                }
                
                textField.text = ""
                return false
            } else if (textField.text?.count)! >= 1 {
                textField.text = string
                return false
            }
            
            return true
    }
}
