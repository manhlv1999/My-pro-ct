import UIKit

class SignUpViewController: UIViewController {
    
    var navView: UIView = {
        var view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
    var titlelabel: UILabel = {
        var label = UILabel()
        label.text = "TẠO TÀI KHOẢN"
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 19)
        label.addCharacterSpacing()
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
    var contentView: UIView = {
        var view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var avatarImageView: UIImageView = {
        var imageview = UIImageView()
        imageview.widthAnchor.constraint(equalToConstant: 120).isActive = true
        imageview.heightAnchor.constraint(equalTo: imageview.widthAnchor, multiplier: 1).isActive = true
        imageview.image = UIImage(named: "image_avatar")
        imageview.layer.cornerRadius = 60
        imageview.clipsToBounds = true
        imageview.layer.borderWidth = 1
        imageview.layer.borderColor = UIColor(red: 250/255, green: 120/255, blue: 67/255, alpha: 1).cgColor
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var addButton: UIButton = {
        var button = UIButton()
        button.widthAnchor.constraint(equalToConstant: 30).isActive = true
        button.heightAnchor.constraint(equalTo: button.widthAnchor, multiplier: 1).isActive = true
        button.layer.cornerRadius = 15
        button.clipsToBounds = true
        button.tintColor = .white
        button.layer.borderWidth = 2
        button.setImage(UIImage(named: "icon_add"), for: .normal)
        button.backgroundColor = UIColor(red: 250/255, green: 120/255, blue: 67/255, alpha: 1)
        button.layer.borderColor = UIColor.white.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.spacing = 15
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var namelabel: UILabel = {
        var label = UILabel()
        label.text = "Họ tên"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var nameTextField: UITextField = {
        var textfield = UITextField()
        textfield.borderStyle = .roundedRect
        textfield.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40).isActive = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    var phonelabel: UILabel = {
        var label = UILabel()
        label.text = "Số điện thoại"
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var phoneTextField: UITextField = {
        var textfield = UITextField()
        textfield.borderStyle = .roundedRect
        textfield.keyboardType = .numberPad
        textfield.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40).isActive = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    var emaillabel: UILabel = {
        var label = UILabel()
        label.text = "Email"
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var emailTextField: UITextField = {
        var textfield = UITextField()
        textfield.borderStyle = .roundedRect
        textfield.autocapitalizationType = .none
        textfield.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40).isActive = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    var areaLabel: UILabel = {
        var label = UILabel()
        label.text = "Khu vực kinh doanh"
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var areaTextField: UITextField = {
        var textfield = UITextField()
        textfield.borderStyle = .roundedRect
        var button = UIButton()
        button.setImage(UIImage(named: "down_arrow"), for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
        textfield.rightViewMode = .always
        textfield.rightView = button
        textfield.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40).isActive = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    var passwordlabel: UILabel = {
        var label = UILabel()
        label.text = "Mật khẩu"
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var passwordTextField: UITextField = {
        var textfield = UITextField()
        textfield.borderStyle = .roundedRect
        textfield.isSecureTextEntry = true
        textfield.keyboardType = .numberPad
        textfield.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40).isActive = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    var rePasswordlabel: UILabel = {
        var label = UILabel()
        label.text = "Xác nhận mật khẩu"
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var rePasswordTextField: UITextField = {
        var textfield = UITextField()
        textfield.borderStyle = .roundedRect
        textfield.isSecureTextEntry = true
        textfield.keyboardType = .numberPad
        textfield.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40).isActive = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    var subLabel: UILabel = {
        var label = UILabel()
        label.font = .systemFont(ofSize: 15)
        label.text = "Bằng việc gửi thông tin này, tôi đồng ý với điều khoản dịch vụ và chính sách bảo mật"
        label.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40).isActive = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 2
        return label
    }()
    var signUpButton: UIButton = {
        var button = UIButton()
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true
        button.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40).isActive = true
        button.setTitle("Tạo tài khoản", for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = UIColor(red: 250/255, green: 120/255, blue: 67/255, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    @objc func addAvatarButton(_ sender: UIButton){
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
            alert.addAction(UIAlertAction(title: "Chụp ảnh", style: .default, handler: { _ in
                self.openCamera()
            }))
            alert.addAction(UIAlertAction(title: "Chọn ảnh từ thư viện", style: .default, handler: { _ in
               self.openGallary()
            }))
            alert.addAction(UIAlertAction.init(title: "Cancel", style: .cancel, handler: nil))
                      
            switch UIDevice.current.userInterfaceIdiom {
            case .pad:
                alert.popoverPresentationController?.sourceView = sender
                alert.popoverPresentationController?.sourceRect = sender.bounds
                alert.popoverPresentationController?.permittedArrowDirections = .up
            default:
                break
            }
           
           self.present(alert, animated: true, completion: nil)
    }
    var imagePicker = UIImagePickerController()
    func openCamera(){
        if(UIImagePickerController .isSourceTypeAvailable(UIImagePickerController.SourceType.camera)){
            imagePicker.sourceType = .camera
            imagePicker.allowsEditing = true
            imagePicker.delegate = self
            self.present(imagePicker, animated: true, completion: nil)
        }
        else{
            let alert  = UIAlertController(title: "Warning", message: "You don't have camera", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    func openGallary(){
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
        imagePicker.delegate = self
        self.present(imagePicker, animated: true, completion: nil)
    }
    @objc func dobackButton(){
        self.navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }
    func setupUI(){
        view.backgroundColor = UIColor(red: 250/255, green: 152/255, blue: 134/255, alpha: 1)
        view.addSubview(navView)
        navView.addSubview(backButton)
        navView.addSubview(titlelabel)
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(avatarImageView)
        contentView.addSubview(addButton)
        contentView.addSubview(stackView)
        contentView.addSubview(subLabel)
        stackView.addArrangedSubview(namelabel)
        stackView.addArrangedSubview(nameTextField)
        stackView.addArrangedSubview(phonelabel)
        stackView.addArrangedSubview(phoneTextField)
        stackView.addArrangedSubview(emaillabel)
        stackView.addArrangedSubview(emailTextField)
        stackView.addArrangedSubview(areaLabel)
        stackView.addArrangedSubview(areaTextField)
        stackView.addArrangedSubview(passwordlabel)
        stackView.addArrangedSubview(passwordTextField)
        stackView.addArrangedSubview(rePasswordlabel)
        stackView.addArrangedSubview(rePasswordTextField)
        contentView.addSubview(signUpButton)
        
        hideKeyBoardWhenTapped()
    
        addButton.addTarget(self, action: #selector(addAvatarButton), for: .touchUpInside)
        backButton.addTarget(self, action: #selector(dobackButton), for: .touchUpInside)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            navView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            navView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            navView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            
            backButton.leadingAnchor.constraint(equalTo: navView.leadingAnchor, constant: 20),
            backButton.topAnchor.constraint(equalTo: navView.topAnchor, constant: 40),
            backButton.bottomAnchor.constraint(equalTo: navView.bottomAnchor, constant: -20),
            
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            scrollView.topAnchor.constraint(equalTo: navView.bottomAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 1),
            
            titlelabel.topAnchor.constraint(equalTo: backButton.topAnchor, constant: 0),
            titlelabel.centerXAnchor.constraint(equalTo: navView.centerXAnchor, constant: 0),
            
            avatarImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 0),
            avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            
            addButton.trailingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: -20),
            addButton.bottomAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 10),
            
            stackView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 0),
            stackView.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 20),
            
            subLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            subLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            subLabel.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 30),
            
            signUpButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 0),
            signUpButton.topAnchor.constraint(equalTo: subLabel.bottomAnchor, constant: 30),
            signUpButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
        ])
    }
}
extension SignUpViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print(info)
        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage {
            avatarImageView.image = image
        }
        picker.dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
}
