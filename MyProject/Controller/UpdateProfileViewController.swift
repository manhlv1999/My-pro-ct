
import UIKit

class UpdateProfileViewController: UIViewController {
    
    var navView: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var cancelButton: UIButton = {
        var button = UIButton()
        button.setImage(UIImage(named: "icon_cancel"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "CẬP NHẬT THÔNG TIN"
        label.font = .systemFont(ofSize: 19)
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
        imageview.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageview.heightAnchor.constraint(equalTo: imageview.widthAnchor, multiplier: 1).isActive = true
        imageview.backgroundColor = .lightGray
        imageview.layer.cornerRadius = 10
        imageview.clipsToBounds = true
//        imageview.layer.borderWidth = 1
//        imageview.layer.borderColor = UIColor(red: 250/255, green: 120/255, blue: 67/255, alpha: 1).cgColor
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
        button.backgroundColor = .gray
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
    var birthdayLabel: UILabel = {
        var label = UILabel()
        label.text = "Ngày sinh"
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var birthdayTextField: UITextField = {
        var textfield = UITextField()
        textfield.borderStyle = .roundedRect
        textfield.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40).isActive = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    var cityLabel: UILabel = {
        var label = UILabel()
        label.text = "Tỉnh/Thành phố"
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var cityTextField: UITextField = {
        var textfield = UITextField()
        var button = UIButton()
        button.setImage(UIImage(named: "down_arrow"), for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
        textfield.rightViewMode = .always
        textfield.rightView = button
        textfield.borderStyle = .roundedRect
        textfield.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40).isActive = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    var districtLabel: UILabel = {
        var label = UILabel()
        label.text = "Quận/Huyện"
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var districtTextField: UITextField = {
        var textfield = UITextField()
        var button = UIButton()
        button.setImage(UIImage(named: "down_arrow"), for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
        textfield.rightViewMode = .always
        textfield.rightView = button
        textfield.borderStyle = .roundedRect
        textfield.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40).isActive = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    var wardLabel: UILabel = {
        var label = UILabel()
        label.text = "Xã/Phường"
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var wardTextField: UITextField = {
        var textfield = UITextField()
        var button = UIButton()
        button.setImage(UIImage(named: "down_arrow"), for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
        textfield.rightViewMode = .always
        textfield.rightView = button
        textfield.borderStyle = .roundedRect
        textfield.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40).isActive = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    var detaiaddressLabel: UILabel = {
        var label = UILabel()
        label.text = "Địa chỉ chi tiết"
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var detaiaddressTextField: UITextField = {
        var textfield = UITextField()
        textfield.borderStyle = .roundedRect
        textfield.placeholder = "Địa chỉ chi tiết"
        textfield.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40).isActive = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    var updateButton: UIButton = {
        var button = UIButton()
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true
        button.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40).isActive = true
        button.setTitle("CẬP NHẬT", for: .normal)
        button.layer.cornerRadius = 10
        button.backgroundColor = UIColor(red: 250/255, green: 120/255, blue: 67/255, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    @objc func doCancelButton(){
        let alert = UIAlertController(title: "Chú ý", message: "Thao tác này sẽ huỷ tất cả các thay đổi của bạn", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Đồng ý", style: .default, handler: { (action) in
            self.dismiss(animated: true, completion: nil)
        }))
        alert.addAction(UIAlertAction(title: "Huỷ bỏ", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
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
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }
    func setupUI(){
        view.backgroundColor = .white
        view.addSubview(navView)
        navView.addSubview(titleLabel)
        navView.addSubview(cancelButton)
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(avatarImageView)
        contentView.addSubview(addButton)
        contentView.addSubview(stackView)
        stackView.addArrangedSubview(phonelabel)
        stackView.addArrangedSubview(phoneTextField)
        stackView.addArrangedSubview(namelabel)
        stackView.addArrangedSubview(nameTextField)
        stackView.addArrangedSubview(emaillabel)
        stackView.addArrangedSubview(emailTextField)
        stackView.addArrangedSubview(birthdayLabel)
        stackView.addArrangedSubview(birthdayTextField)
        stackView.addArrangedSubview(cityLabel)
        stackView.addArrangedSubview(cityTextField)
        stackView.addArrangedSubview(districtLabel)
        stackView.addArrangedSubview(districtTextField)
        stackView.addArrangedSubview(wardLabel)
        stackView.addArrangedSubview(wardTextField)
        stackView.addArrangedSubview(detaiaddressLabel)
        stackView.addArrangedSubview(detaiaddressTextField)
        contentView.addSubview(updateButton)
            
        hideKeyBoardWhenTapped()
    
        addButton.addTarget(self, action: #selector(addAvatarButton), for: .touchUpInside)
        cancelButton.addTarget(self, action: #selector(doCancelButton), for: .touchUpInside)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            navView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            navView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            navView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            
            titleLabel.centerXAnchor.constraint(equalTo: navView.centerXAnchor, constant: 0),
            titleLabel.topAnchor.constraint(equalTo: cancelButton.topAnchor, constant: 0),
            titleLabel.bottomAnchor.constraint(equalTo: cancelButton.bottomAnchor, constant: 0),
            
            cancelButton.topAnchor.constraint(equalTo: navView.topAnchor, constant: 20),
            cancelButton.leadingAnchor.constraint(equalTo: navView.leadingAnchor, constant: 10),
            cancelButton.bottomAnchor.constraint(equalTo: navView.bottomAnchor, constant: -20),
            
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            scrollView.topAnchor.constraint(equalTo: navView.bottomAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 1),
            
            avatarImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 0),
            avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            
            addButton.trailingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 10),
            addButton.bottomAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 10),
            
            stackView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 0),
            stackView.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 20),
            
            updateButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 0),
            updateButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 30),
            updateButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
        ])
    }
}
extension UpdateProfileViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
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
