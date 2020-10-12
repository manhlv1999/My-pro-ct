import UIKit

class SendNotiViewController: UIViewController {
    
    var navView: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var cancelButton: UIButton = {
        var button = UIButton()
        button.setImage(UIImage(named: "icon_cancel"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var titleNavLabel: UILabel = {
        var label = UILabel()
        label.text = "GỬI THÔNG BÁO"
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
    var contentStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.distribution = .fill
        stackview.axis = .vertical
        stackview.spacing = 20
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var titleStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var b1Label: UILabel = {
        var label = UILabel()
        label.text = "B1"
        label.textAlignment = .center
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.textColor = .white
        label.backgroundColor = UIColor(red: 42/255, green: 187/255, blue: 156/255, alpha: 1)
        label.font = .systemFont(ofSize: 23)
        label.widthAnchor.constraint(equalToConstant: 44).isActive = true
        label.heightAnchor.constraint(equalTo: label.widthAnchor, multiplier: 1).isActive = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var b1StackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.spacing = 5
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var titlelabel: UILabel = {
        var label = UILabel()
        label.text = "NỘI DUNG THÔNG BÁO"
        label.addCharacterSpacing()
        label.font = .systemFont(ofSize: 21)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subTitlelabel: UILabel = {
        var label = UILabel()
        label.text = "Hãy nhập nội dung thông báo bên dưới"
        label.font = .italicSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var lineView: UIView = {
        var view = UIView()
        view.backgroundColor = .gray
        view.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        view.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var inputLabel: UILabel = {
        var label = UILabel()
        label.text = "Nhập tiêu đề"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var titleNotiTextField: UITextField = {
        var textfileld = UITextField()
        textfileld.placeholder = "Tiêu đề thông báo"
        textfileld.borderStyle = .roundedRect
        textfileld.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40).isActive = true
        textfileld.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfileld.translatesAutoresizingMaskIntoConstraints = false
        return textfileld
    }()
    var contentLabel: UILabel = {
        var label = UILabel()
        label.text = "Nhập nội dung"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var contentTextView: UITextView = {
        var textview = UITextView()
        textview.layer.borderWidth = 0.5
        textview.layer.cornerRadius = 5
        textview.text = "Nội dung thông báo"
        textview.font = .systemFont(ofSize: 17)
        textview.layer.borderColor = UIColor.lightGray.cgColor
        textview.textColor = UIColor.lightGray
        textview.clipsToBounds = true
        textview.heightAnchor.constraint(equalToConstant: 44 * 3).isActive = true
        textview.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40).isActive = true
        textview.translatesAutoresizingMaskIntoConstraints = false
        return textview
    }()
    var sentfileLabel: UILabel = {
        var label = UILabel()
        label.text = "Gửi đính kèm"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var sentFileButton: UIButton = {
        var button = UIButton()
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 100).isActive = true
        button.setTitle("+", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 50)
        button.setTitleColor(UIColor.gray, for: .normal)
        button.layer.borderWidth = 0.5
        button.layer.cornerRadius = 5
        button.layer.borderColor = UIColor.gray.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var lineView1: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor(red: 235/255, green: 235/255, blue: 235/255, alpha: 1)
        view.heightAnchor.constraint(equalToConstant: 10).isActive = true
        view.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var titleStackView2: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var b2Label: UILabel = {
        var label = UILabel()
        label.text = "B2"
        label.textAlignment = .center
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.textColor = .white
        label.backgroundColor = UIColor(red: 42/255, green: 187/255, blue: 156/255, alpha: 1)
        label.font = .systemFont(ofSize: 23)
        label.widthAnchor.constraint(equalToConstant: 44).isActive = true
        label.heightAnchor.constraint(equalTo: label.widthAnchor, multiplier: 1).isActive = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var b2StackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.spacing = 5
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var titlelabel2: UILabel = {
        var label = UILabel()
        label.text = "NGƯỜI NHẬN"
        label.addCharacterSpacing()
        label.font = .systemFont(ofSize: 21)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subTitlelabel2: UILabel = {
        var label = UILabel()
        label.text = "Chọn danh sách người nhận"
        label.font = .italicSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var lineView2: UIView = {
        var view = UIView()
        view.backgroundColor = .gray
        view.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        view.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var chooseHomeLabel: UILabel = {
        var label = UILabel()
        label.text = "Chọn nhà"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var chooseHomeTextField: UITextField = {
        var textfileld = UITextField()
        textfileld.borderStyle = .roundedRect
        let button = UIButton()
        button.setImage(UIImage(named: "down_arrow"), for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
        textfileld.rightViewMode = .always
        textfileld.rightView = button
        textfileld.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40).isActive = true
        textfileld.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfileld.translatesAutoresizingMaskIntoConstraints = false
        return textfileld
    }()
    var chooseRoomLabel: UILabel = {
        var label = UILabel()
        label.text = "Chọn phòng"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var chooseRoomTextField: UITextField = {
        var textfileld = UITextField()
        let button = UIButton()
        button.setImage(UIImage(named: "down_arrow"), for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
        textfileld.rightViewMode = .always
        textfileld.rightView = button
        textfileld.borderStyle = .roundedRect
        textfileld.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40).isActive = true
        textfileld.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfileld.translatesAutoresizingMaskIntoConstraints = false
        return textfileld
    }()
    var chooseCustommerLabel: UILabel = {
        var label = UILabel()
        label.text = "Chọn khách nhận thông báo"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var radioButtonStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var allButton: UIButton = {
        var button = UIButton()
        button.widthAnchor.constraint(equalToConstant: 24).isActive = true
        button.heightAnchor.constraint(equalToConstant: 24).isActive = true
        button.setImage(UIImage(named: "icon_uncheck"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var allLabel: UILabel = {
        var label = UILabel()
        label.text = "Tất cả khách"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var receiverStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.spacing = 20
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var submitView: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var submitButton: UIButton = {
        var button = UIButton()
        button.setTitle("XÁC NHẬN", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 17)
        button.layer.cornerRadius = 5
        button.backgroundColor = UIColor(red: 250/255, green: 120/255, blue: 67/255, alpha: 1)
        button.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40).isActive = true
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    @objc func doCancelButton(){
        let alert = UIAlertController(title: "Chú ý", message: "Thao tác này sẽ huỷ tất cả các thay đổi của bạn", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Đồng ý", style: .default, handler: { (action) in
            self.dismiss(animated: true, completion: nil)
        }))
        alert.addAction(UIAlertAction(title: "Huỷ", style: .cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
        let notificationViewController = NotificationViewController()
        self.navigationController?.popToViewController(notificationViewController, animated: true)
    }
    var uncheck = true
    @objc func doCheckButton(_ sender: UIButton){
        if uncheck {
            sender.setImage(UIImage(named: "icon_uncheck"), for: .normal)
            uncheck = false
        } else {
            sender.setImage(UIImage(named: "icon_checked"), for: .normal)
            uncheck = true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }
    func setupUI(){
        
        view.backgroundColor = .white
        contentTextView.delegate = self
        hideKeyBoardWhenTapped()
        view.addSubview(scrollView)
        view.addSubview(navView)
        navView.addSubview(cancelButton)
        navView.addSubview(titleNavLabel)
        scrollView.addSubview(contentStackView)
        contentStackView.addArrangedSubview(titleStackView)
        titleStackView.addArrangedSubview(b1Label)
        titleStackView.addArrangedSubview(b1StackView)
        b1StackView.addArrangedSubview(titlelabel)
        b1StackView.addArrangedSubview(subTitlelabel)
        contentStackView.addArrangedSubview(lineView)
        contentStackView.addArrangedSubview(inputLabel)
        contentStackView.addArrangedSubview(titleNotiTextField)
        contentStackView.addArrangedSubview(contentLabel)
        contentStackView.addArrangedSubview(contentTextView)
        contentStackView.addArrangedSubview(sentfileLabel)
        contentStackView.addArrangedSubview(sentFileButton)
        scrollView.addSubview(lineView1)
        scrollView.addSubview(receiverStackView)
        receiverStackView.addArrangedSubview(titleStackView2)
        titleStackView2.addArrangedSubview(b2Label)
        titleStackView2.addArrangedSubview(b2StackView)
        b2StackView.addArrangedSubview(titlelabel2)
        b2StackView.addArrangedSubview(subTitlelabel2)
        receiverStackView.addArrangedSubview(lineView2)
        receiverStackView.addArrangedSubview(chooseHomeLabel)
        receiverStackView.addArrangedSubview(chooseHomeTextField)
        receiverStackView.addArrangedSubview(chooseRoomLabel)
        receiverStackView.addArrangedSubview(chooseRoomTextField)
        receiverStackView.addArrangedSubview(chooseCustommerLabel)
        receiverStackView.addArrangedSubview(radioButtonStackView)
        radioButtonStackView.addArrangedSubview(allButton)
        radioButtonStackView.addArrangedSubview(allLabel)
        view.addSubview(submitView)
        submitView.addSubview(submitButton)
        
        allButton.addTarget(self, action: #selector(doCheckButton(_:)), for: .touchUpInside)
        cancelButton.addTarget(self, action: #selector(doCancelButton), for: .touchUpInside)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            navView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            navView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            navView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            
            titleNavLabel.centerXAnchor.constraint(equalTo: navView.centerXAnchor, constant: 0),
            titleNavLabel.topAnchor.constraint(equalTo: cancelButton.topAnchor, constant: 0),
            titleNavLabel.bottomAnchor.constraint(equalTo: cancelButton.bottomAnchor, constant: 0),
            
            cancelButton.topAnchor.constraint(equalTo: navView.topAnchor, constant: 20),
            cancelButton.leadingAnchor.constraint(equalTo: navView.leadingAnchor, constant: 10),
            cancelButton.bottomAnchor.constraint(equalTo: navView.bottomAnchor, constant: -20),
            
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            scrollView.topAnchor.constraint(equalTo: navView.bottomAnchor, constant: 0),
            
            contentStackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            contentStackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            contentStackView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 20),
            
            lineView1.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
            lineView1.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
            lineView1.topAnchor.constraint(equalTo: contentStackView.bottomAnchor, constant: 20),
            
            receiverStackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            receiverStackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            receiverStackView.topAnchor.constraint(equalTo: lineView1.bottomAnchor, constant: 10),
            receiverStackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -20),
            
            submitView.topAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0),
            submitView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            submitView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            submitView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            
            submitButton.centerXAnchor.constraint(equalTo: submitView.centerXAnchor, constant: 0),
            submitButton.topAnchor.constraint(equalTo: submitView.topAnchor, constant: 10),
            submitButton.bottomAnchor.constraint(equalTo: submitView.bottomAnchor, constant: -20),
        ])
    }

}
extension SendNotiViewController: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = "Nhập nội dung"
            textView.textColor = UIColor.lightGray
        }
    }
}
