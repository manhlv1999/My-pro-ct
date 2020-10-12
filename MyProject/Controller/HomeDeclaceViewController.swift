import UIKit

class HomeDeclaceViewController: UIViewController {

    
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
        label.text = "KHAI BÁO NHÀ TRỌ"
        label.font = .systemFont(ofSize: 19)
        label.addCharacterSpacing()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var bottomView: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var addHouseButton: UIButton = {
        var button = UIButton()
        button.setTitle("TẠO NHÀ", for: .normal)
        button.backgroundColor = UIColor(red: 249/255, green: 120/255, blue: 48/255, alpha: 1)
        button.layer.cornerRadius = 5
        button.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 20).isActive = true
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var scrollView: UIScrollView = {
        var scrollview = UIScrollView()
        scrollview.backgroundColor = .white
        scrollview.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        scrollview.translatesAutoresizingMaskIntoConstraints = false
        return scrollview
    }()
    var b1StackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var b1TitleStackView: UIStackView = {
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
        label.addCharacterSpacing()
        label.textAlignment = .center
        label.textColor = .white
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.widthAnchor.constraint(equalToConstant: 44).isActive = true
        label.heightAnchor.constraint(equalTo: label.widthAnchor, constant: 1).isActive = true
        label.backgroundColor = UIColor(red: 38/255, green: 174/255, blue: 144/255, alpha: 1)
        label.font = .systemFont(ofSize: 21)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var b1labelStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var notilabel: UILabel = {
        var label = UILabel()
        label.text = "THÔNG TIN NHÀ"
        label.addCharacterSpacing()
        label.font = .boldSystemFont(ofSize: 21)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subNotiLabel: UILabel = {
        var label = UILabel()
        label.text = "Vui lòng chọn đủ các thông tin dưới đây"
        label.font = .systemFont(ofSize: 13)
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var item1 = LineView()
    var nameHouseLabel: UILabel = {
        var label = UILabel()
        label.text = "Tên nhà"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var nameHouseTextField: UITextField = {
        var textfield = UITextField()
        textfield.borderStyle = .roundedRect
        textfield.placeholder = "Chung cư mini full đồ Hoàng đạo thuý"
        textfield.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 20).isActive = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    var genderHouseLabel: UILabel = {
        var label = UILabel()
        label.text = "Loại nhà"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var genderHouseTextField: UITextField = {
        var textfield = UITextField()
        textfield.borderStyle = .roundedRect
        var button = UIButton()
        button.setImage(UIImage(named: "down_arrow"), for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
        textfield.rightViewMode = .always
        textfield.rightView = button
        textfield.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 20).isActive = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    var methodlabel: UILabel = {
        var label = UILabel()
        label.text = "Hình thức thu tiền"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var methodStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.distribution = .fillEqually
        stackview.alignment = .center
        stackview.spacing = 20
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var motelButton: UIButton = {
        var button = UIButton(type: .custom)
        button.setImage(UIImage(named: "icon_motel"), for: .normal)
        button.setTitle("Phòng trọ", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15)
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 0.2
        button.alignTextBelow(spacing: 10)
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 100).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var dormitoryButton: UIButton = {
        var button = UIButton(type: .custom)
        button.setImage(UIImage(named: "icon_dormitory"), for: .normal)
        button.setTitle("Ký túc xá", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15)
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 0.2
        button.alignTextBelow(spacing: 10)
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 100).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var priceLabel: UILabel = {
        var label = UILabel()
        label.text = "Giá tiền"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var priceTextField: UITextField = {
        var textfield = UITextField()
        textfield.borderStyle = .roundedRect
        textfield.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 20).isActive = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    var nameHostLabel: UILabel = {
        var label = UILabel()
        label.text = "Tên chủ nhà"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var nameHostTextField: UITextField = {
        var textfield = UITextField()
        textfield.borderStyle = .roundedRect
        textfield.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 20).isActive = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    var phoneHostLabel: UILabel = {
        var label = UILabel()
        label.text = "Số điện thoại chủ nhà"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var phoneHostTextField: UITextField = {
        var textfield = UITextField()
        textfield.borderStyle = .roundedRect
        textfield.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 20).isActive = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    var lineView: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 240/255)
        view.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        view.heightAnchor.constraint(equalToConstant: 10).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var b2StackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var b2TitleStackView: UIStackView = {
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
        label.addCharacterSpacing()
        label.textAlignment = .center
        label.textColor = .white
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.widthAnchor.constraint(equalToConstant: 44).isActive = true
        label.heightAnchor.constraint(equalTo: label.widthAnchor, constant: 1).isActive = true
        label.backgroundColor = UIColor(red: 40/255, green: 140/255, blue: 222/255, alpha: 1)
        label.font = .systemFont(ofSize: 21)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var b2labelStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var notiAddresslabel: UILabel = {
        var label = UILabel()
        label.text = "THÔNG TIN ĐỊA CHỈ"
        label.addCharacterSpacing()
        label.font = .boldSystemFont(ofSize: 21)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subNotiAddressLabel: UILabel = {
        var label = UILabel()
        label.text = "Nhập để khách tìm thấy nhà của bạn"
        label.font = .systemFont(ofSize: 13)
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var cityLabel: UILabel = {
        var label = UILabel()
        label.text = "Tỉnh/Thành phố"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var cityTextField: UITextField = {
        var textfield = UITextField()
        textfield.borderStyle = .roundedRect
        var button = UIButton()
        button.setImage(UIImage(named: "down_arrow"), for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
        textfield.rightViewMode = .always
        textfield.rightView = button
        textfield.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 20).isActive = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    var disrictLabel: UILabel = {
        var label = UILabel()
        label.text = "Quận/Huyện"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var disrictTextField: UITextField = {
        var textfield = UITextField()
        textfield.borderStyle = .roundedRect
        var button = UIButton()
        button.setImage(UIImage(named: "down_arrow"), for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
        textfield.rightViewMode = .always
        textfield.rightView = button
        textfield.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 20).isActive = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    var communeLabel: UILabel = {
        var label = UILabel()
        label.text = "Xã/Phường"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var communeTextField: UITextField = {
        var textfield = UITextField()
        textfield.borderStyle = .roundedRect
        var button = UIButton()
        button.setImage(UIImage(named: "down_arrow"), for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
        textfield.rightViewMode = .always
        textfield.rightView = button
        textfield.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 20).isActive = true
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    var addressDetailLabel: UILabel = {
        var label = UILabel()
        label.text = "Địa chỉ chi tiết"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var addressDetailTextView: UITextView = {
        var textview = UITextView()
        textview.layer.borderWidth = 0.2
        textview.layer.cornerRadius = 5
        textview.heightAnchor.constraint(equalToConstant: 88).isActive = true
        textview.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 2).isActive = true
        textview.translatesAutoresizingMaskIntoConstraints = false
        return textview
    }()
    var item2 = LineView()
    var mapStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.distribution = .fill
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var mapLabel: UILabel = {
        var label = UILabel()
        label.text = "Vị trí trên bản đồ"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var mapButton: UIButton = {
        var button = UIButton()
        button.setTitle("Chọn", for: .normal)
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 0.5
        button.titleLabel?.font = .systemFont(ofSize: 15)
        button.setTitleColor(UIColor(red: 65/255, green: 161/255, blue: 116/255, alpha: 1), for: .normal)
        button.layer.borderColor = UIColor(red: 65/255, green: 161/255, blue: 116/255, alpha: 1).cgColor
        button.widthAnchor.constraint(equalToConstant: 50).isActive = true
        button.heightAnchor.constraint(equalToConstant: 30).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var mapImageView: UIImageView = {
        var imageview = UIImageView()
        imageview.backgroundColor = .gray
        imageview.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 20).isActive = true
        imageview.heightAnchor.constraint(equalToConstant: 200).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    
    var lineView2: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 240/255)
        view.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        view.heightAnchor.constraint(equalToConstant: 10).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var b3StackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.alignment = .leading
        stackview.spacing = 20
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var b3TitleStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var b3Label: UILabel = {
        var label = UILabel()
        label.text = "B3"
        label.addCharacterSpacing()
        label.textAlignment = .center
        label.textColor = .white
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.widthAnchor.constraint(equalToConstant: 44).isActive = true
        label.heightAnchor.constraint(equalTo: label.widthAnchor, constant: 1).isActive = true
        label.backgroundColor = UIColor(red: 19/255, green: 132/255, blue: 120/255, alpha: 1)
        label.font = .systemFont(ofSize: 21)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var b3labelStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var infoDetaillabel: UILabel = {
        var label = UILabel()
        label.text = "THÔNG TIN CHI TIẾT"
        label.addCharacterSpacing()
        label.font = .boldSystemFont(ofSize: 21)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subInfoDetailLabel: UILabel = {
        var label = UILabel()
        label.text = "Cung cấp thông tin để khách tìm nhà tìm thấy"
        label.font = .systemFont(ofSize: 13)
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var pictureLabel: UILabel = {
        var label = UILabel()
        label.text = "HÌNH ẢNH"
        label.addCharacterSpacing()
        label.font = .systemFont(ofSize: 19)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var pictureButton: UIButton = {
        var button = UIButton()
        button.setTitle("+", for: .normal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 0.5
        button.setTitleColor(UIColor.gray, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 50)
        button.widthAnchor.constraint(equalToConstant: 120).isActive = true
        button.heightAnchor.constraint(equalToConstant: 120).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var videoLabel: UILabel = {
        var label = UILabel()
        label.text = "VIDEO"
        label.addCharacterSpacing()
        label.font = .systemFont(ofSize: 19)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var videoButton: UIButton = {
        var button = UIButton()
        button.setTitle("+", for: .normal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 0.5
        button.setTitleColor(UIColor.gray, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 50)
        button.widthAnchor.constraint(equalToConstant: 120).isActive = true
        button.heightAnchor.constraint(equalToConstant: 120).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var depcriptionLabel: UILabel = {
        var label = UILabel()
        label.text = "Mô tả chi tiết(Tối thiểu 100 ký tự)"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var depcriptionTextView: UITextView = {
        var textview = UITextView()
        textview.layer.cornerRadius = 10
        textview.layer.borderWidth = 0.5
        textview.layer.borderColor = UIColor.lightGray.cgColor
        textview.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 20).isActive = true
        textview.heightAnchor.constraint(equalToConstant: 200).isActive = true
        textview.translatesAutoresizingMaskIntoConstraints = false
        return textview
    }()
    var lineView3: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 240/255)
        view.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        view.heightAnchor.constraint(equalToConstant: 10).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var b4StackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.alignment = .leading
        stackview.spacing = 20
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var b4TitleStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var b4Label: UILabel = {
        var label = UILabel()
        label.text = "B4"
        label.addCharacterSpacing()
        label.textAlignment = .center
        label.textColor = .white
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.widthAnchor.constraint(equalToConstant: 44).isActive = true
        label.heightAnchor.constraint(equalTo: label.widthAnchor, constant: 1).isActive = true
        label.backgroundColor = UIColor(red: 125/255, green: 38/255, blue: 140/255, alpha: 1)
        label.font = .systemFont(ofSize: 21)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var b4labelStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var ruleslabel: UILabel = {
        var label = UILabel()
        label.text = "TIỆN ÍCH & NỘI QUY"
        label.addCharacterSpacing()
        label.font = .boldSystemFont(ofSize: 21)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subRulesLabel: UILabel = {
        var label = UILabel()
        label.text = "Chọn tiện ích và nội quy"
        label.font = .systemFont(ofSize: 13)
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var addUtilitiesButton: UIButton = {
        var button = UIButton()
        button.setTitle("Thêm tiện ích", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15)
        button.layer.cornerRadius = 5
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.borderWidth = 0.5
        button.layer.borderColor = UIColor.gray.cgColor
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var addRulesButton: UIButton = {
        var button = UIButton()
        let addDashline = CAShapeLayer()
        addDashline.strokeColor = UIColor.lightGray.cgColor
        addDashline.lineDashPattern = [5, 5]
        addDashline.frame = button.bounds
        addDashline.fillColor = nil
        addDashline.path = UIBezierPath(rect: button.bounds).cgPath
        button.layer.addSublayer(addDashline)
        button.setTitle("Thêm nội quy", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15)
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 0.5
        button.setTitleColor(UIColor.black, for: .normal)
        button.layer.borderColor = UIColor.gray.cgColor
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    @objc func dorulesButton(){
        let addRulesViewController = AddRulesViewController()
        present(addRulesViewController, animated: true)
        //self.navigationController?.pushViewController(addRulesViewController, animated: true)
    }
    @objc func doUtilitiesButton(){
        let addUtilitiesViewController = AddUtilitiesViewController()
        present(addUtilitiesViewController, animated: true)
        //self.navigationController?.pushViewController(addUtilitiesViewController, animated: true)
    }
    @objc func doCancelButton(){
        let alert = UIAlertController(title: "Chú ý", message: "Thao tác này sẽ huỷ các thay đổi của bạn", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Đồng ý", style: .default, handler: { (actions) in
            self.dismiss(animated: true, completion: nil)
        }))
        alert.addAction(UIAlertAction(title: "Huỷ", style: .cancel, handler: nil))
        self.present(alert, animated: true)
    }
    let imagePickerController = UIImagePickerController()
    var videoUrl: NSURL?
    
    @objc func doSelectVideo(){
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        imagePickerController.allowsEditing = true
        imagePickerController.mediaTypes = ["puclic.image", "public.movie"]
        
        present(imagePickerController, animated: true, completion: nil)
    }
    @objc func doselectImage(){
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        imagePickerController.allowsEditing = true
        
        present(imagePickerController, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }
    func setupUI(){
        view.backgroundColor = .white
        view.addSubview(navView)
        navView.addSubview(titleNavLabel)
        navView.addSubview(cancelButton)
        
        view.addSubview(scrollView)
        scrollView.addSubview(b1StackView)
        b1StackView.addArrangedSubview(b1TitleStackView)
        b1TitleStackView.addArrangedSubview(b1Label)
        b1TitleStackView.addArrangedSubview(b1labelStackView)
        b1labelStackView.addArrangedSubview(notilabel)
        b1labelStackView.addArrangedSubview(subNotiLabel)
        b1StackView.addArrangedSubview(item1)
        b1StackView.addArrangedSubview(nameHouseLabel)
        b1StackView.addArrangedSubview(nameHouseTextField)
        b1StackView.addArrangedSubview(genderHouseLabel)
        b1StackView.addArrangedSubview(genderHouseTextField)
        b1StackView.addArrangedSubview(methodlabel)
        b1StackView.addArrangedSubview(methodStackView)
        methodStackView.addArrangedSubview(motelButton)
        methodStackView.addArrangedSubview(dormitoryButton)
        b1StackView.addArrangedSubview(priceLabel)
        b1StackView.addArrangedSubview(priceTextField)
        b1StackView.addArrangedSubview(nameHostLabel)
        b1StackView.addArrangedSubview(nameHostTextField)
        b1StackView.addArrangedSubview(phoneHostLabel)
        b1StackView.addArrangedSubview(phoneHostTextField)
        
        scrollView.addSubview(lineView)
        scrollView.addSubview(b2StackView)
        b2StackView.addArrangedSubview(b2TitleStackView)
        b2TitleStackView.addArrangedSubview(b2Label)
        b2TitleStackView.addArrangedSubview(b2labelStackView)
        b2labelStackView.addArrangedSubview(notiAddresslabel)
        b2labelStackView.addArrangedSubview(subNotiAddressLabel)
        b2StackView.addArrangedSubview(item2)
        b2StackView.addArrangedSubview(cityLabel)
        b2StackView.addArrangedSubview(cityTextField)
        b2StackView.addArrangedSubview(disrictLabel)
        b2StackView.addArrangedSubview(disrictTextField)
        b2StackView.addArrangedSubview(communeLabel)
        b2StackView.addArrangedSubview(communeTextField)
        b2StackView.addArrangedSubview(addressDetailLabel)
        b2StackView.addArrangedSubview(addressDetailTextView)
        b2StackView.addArrangedSubview(mapStackView)
        mapStackView.addArrangedSubview(mapLabel)
        mapStackView.addArrangedSubview(mapButton)
        scrollView.addSubview(mapImageView)
        b2StackView.addArrangedSubview(mapImageView)
        
        scrollView.addSubview(lineView2)
        scrollView.addSubview(b3StackView)
        b3StackView.addArrangedSubview(b3TitleStackView)
        b3TitleStackView.addArrangedSubview(b3Label)
        b3TitleStackView.addArrangedSubview(b3labelStackView)
        b3labelStackView.addArrangedSubview(infoDetaillabel)
        b3labelStackView.addArrangedSubview(subInfoDetailLabel)
        b3StackView.addArrangedSubview(pictureLabel)
        b3StackView.addArrangedSubview(pictureButton)
        b3StackView.addArrangedSubview(videoLabel)
        b3StackView.addArrangedSubview(videoButton)
        b3StackView.addArrangedSubview(depcriptionLabel)
        b3StackView.addArrangedSubview(depcriptionTextView)
        
        scrollView.addSubview(lineView3)
        scrollView.addSubview(b4StackView)
        b4StackView.addArrangedSubview(b4TitleStackView)
        b4TitleStackView.addArrangedSubview(b4Label)
        b4TitleStackView.addArrangedSubview(b4labelStackView)
        b4labelStackView.addArrangedSubview(ruleslabel)
        b4labelStackView.addArrangedSubview(subRulesLabel)
        b4StackView.addArrangedSubview(addUtilitiesButton)
        b4StackView.addArrangedSubview(addRulesButton)
        
        view.addSubview(bottomView)
        bottomView.addSubview(addHouseButton)
        hideKeyBoardWhenTapped()
        
        cancelButton.addTarget(self, action: #selector(doCancelButton), for: .touchUpInside)
        addUtilitiesButton.addTarget(self, action: #selector(doUtilitiesButton), for: .touchUpInside)
        addRulesButton.addTarget(self, action: #selector(dorulesButton), for: .touchUpInside)
        videoButton.addTarget(self, action: #selector(doSelectVideo), for: .touchUpInside)
        pictureButton.addTarget(self, action: #selector(doselectImage), for: .touchUpInside)
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
            
            bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            addHouseButton.centerXAnchor.constraint(equalTo: bottomView.centerXAnchor, constant: 0),
            addHouseButton.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 10),
            addHouseButton.bottomAnchor.constraint(equalTo: bottomView.bottomAnchor, constant: -20),
            
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            scrollView.topAnchor.constraint(equalTo: navView.bottomAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: bottomView.topAnchor, constant: -10),
            
            b1StackView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 10),
            b1StackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10),
            b1StackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -10),
            
            lineView.topAnchor.constraint(equalTo: b1StackView.bottomAnchor, constant: 10),
            lineView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
            lineView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
            lineView.bottomAnchor.constraint(equalTo: b2StackView.topAnchor, constant: -10),
            
            b2StackView.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 10),
            b2StackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10),
            b2StackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -10),
            
            lineView2.topAnchor.constraint(equalTo: b2StackView.bottomAnchor, constant: 10),
            lineView2.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
            lineView2.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
            lineView2.bottomAnchor.constraint(equalTo: b3StackView.topAnchor, constant: -10),
            
            b3StackView.topAnchor.constraint(equalTo: lineView2.bottomAnchor, constant: 10),
            b3StackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10),
            b3StackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -10),
            
            lineView3.topAnchor.constraint(equalTo: b3StackView.bottomAnchor, constant: 10),
            lineView3.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
            lineView3.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
            lineView3.bottomAnchor.constraint(equalTo: b4StackView.topAnchor, constant: -10),
            
            b4StackView.topAnchor.constraint(equalTo: lineView3.bottomAnchor, constant: 10),
            b4StackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10),
            b4StackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -10),
            b4StackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0),
            
        ])
    }
}
extension HomeDeclaceViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        videoUrl = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerReferenceURL")] as? NSURL
        _ = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
}

