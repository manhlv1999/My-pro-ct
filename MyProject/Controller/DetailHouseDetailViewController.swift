import UIKit

class DetailHouseDetailViewController: UIViewController {
    
    
    var navBarView: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor(red: 34/255, green: 182/255, blue: 135/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var backButton: UIButton = {
        var button = UIButton()
        button.tintColor = .white
        button.widthAnchor.constraint(equalToConstant: 30).isActive = true
        button.setImage(UIImage(named: "icon_back"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "Nhà trọ"
        label.font = .systemFont(ofSize: 23)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var shareButton: UIButton = {
        var button = UIButton()
        button.setImage(UIImage(named: "icon_share"), for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var bottomView: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 1)
        view.layer.cornerRadius = 30
        view.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var bottomStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.distribution = .fill
        stackview.spacing = 20
        stackview.alignment = .center
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var messButton: UIButton = {
        var button = UIButton()
        button.setTitle("Nhắn tin", for: .normal)
        button.setTitleColor(UIColor(red: 33/255, green: 189/255, blue: 176/255, alpha: 1), for: .normal)
        button.layer.borderWidth = 0.5
        button.layer.borderColor = UIColor(red: 33/255, green: 189/255, blue: 176/255, alpha: 1).cgColor
        button.layer.cornerRadius = 5
        button.widthAnchor.constraint(equalToConstant: 170).isActive = true
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return  button
    }()
    var callButton: UIButton = {
        var button = UIButton()
        button.widthAnchor.constraint(equalToConstant: 44).isActive = true
        button.heightAnchor.constraint(equalTo: button.widthAnchor, multiplier: 1).isActive = true
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 0.5
        button.layer.borderColor = UIColor.gray.cgColor
        button.setImage(UIImage(named: "icon_call"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var reportButton: UIButton = {
        var button = UIButton()
        button.widthAnchor.constraint(equalToConstant: 44).isActive = true
        button.heightAnchor.constraint(equalTo: button.widthAnchor, multiplier: 1).isActive = true
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 0.5
        button.layer.borderColor = UIColor.gray.cgColor
        button.setImage(UIImage(named: "icon_report"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var likeButton: UIButton = {
        var button = UIButton()
        button.widthAnchor.constraint(equalToConstant: 44).isActive = true
        button.heightAnchor.constraint(equalTo: button.widthAnchor, multiplier: 1).isActive = true
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 0.5
        button.layer.borderColor = UIColor.gray.cgColor
        button.setImage(UIImage(named: "icon_like"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var scrollView: UIScrollView = {
        var scrollView = UIScrollView()
        scrollView.backgroundColor = .clear
        scrollView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    var imageView: UIImageView = {
        var imageview = UIImageView()
        imageview.image = UIImage(named: "image_house")
        imageview.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        imageview.heightAnchor.constraint(equalTo: imageview.widthAnchor, constant: 1).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var detailView: UIView = {
        var view = UIView()
        view.layer .cornerRadius = 30
        view.backgroundColor = .white
        view.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        view.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var priceLabel: UILabel = {
        var label = UILabel()
        label.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 80).isActive = true
        label.heightAnchor.constraint(equalToConstant: 44).isActive = true
        label.backgroundColor = .orange
        label.text = "Giá: 7.200.000 đ - 7.500.000 đ"
        label.textColor = .white
        label.textAlignment = .center
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        label.font = .boldSystemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var addressStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var nameHouseLabel: UILabel = {
        var label = UILabel()
        label.text = "Võng Thị 10"
        label.font = .boldSystemFont(ofSize: 19)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var addressLabel: UILabel = {
        var label = UILabel()
        label.text = "1/53/514 Thuỵ Khuê"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var profileStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.spacing = 10
        stackview.distribution = .fill
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var avatarImageView: UIImageView = {
        var imageview = UIImageView()
        imageview.widthAnchor.constraint(equalToConstant: 50).isActive = true
        imageview.heightAnchor.constraint(equalTo: imageview.widthAnchor, constant: 1).isActive = true
        imageview.image = UIImage(named: "image_avatar")
        imageview.layer.cornerRadius = 5
        imageview.clipsToBounds = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var inforStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.distribution = .fill
        stackview.axis = .vertical
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var nameLabel: UILabel = {
        var label = UILabel()
        label.text = "Lê Viết Mạnh"
        label.font = .boldSystemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var phoneLabel: UILabel = {
        var label = UILabel()
        label.text = "0856986808"
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var evaluateStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.spacing = 10
        stackview.distribution = .fill
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var valueLabel: UILabel = {
        var label = UILabel()
        label.text = "Đánh giá"
        label.font = .boldSystemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var valueStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var starLabel: UILabel = {
        var label = UILabel()
        label.text = "0,0"
        label.textColor = .white
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.textAlignment = .center
        label.backgroundColor = .orange
        label.font = .boldSystemFont(ofSize: 21)
        label.heightAnchor.constraint(equalToConstant: 50).isActive = true
        label.widthAnchor.constraint(equalTo: label.heightAnchor, multiplier: 1).isActive = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var seeValueStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.alignment = .leading
        stackview.distribution = .fill
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var numberLabel: UILabel = {
        var label = UILabel()
        label.text = "0 đánh giá"
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var seeButton: UIButton = {
        var button = UIButton()
        button.setTitle("Xem đánh giá", for: .normal)
        button.setTitleColor(UIColor(red: 80/255, green: 182/255, blue: 158/255, alpha: 1), for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 15)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var reviewView: UIView = {
        var view = UIView()
        view.layer.cornerRadius = 10
        view.layer.borderWidth = 0.1
        view.heightAnchor.constraint(equalToConstant: 200).isActive = true
        view.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var reviewStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.spacing = 10
        stackview.distribution = .fill
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var titleReviewLabel: UILabel = {
        var label = UILabel()
        label.text = "Đánh giá của bạn"
        label.font = .boldSystemFont(ofSize: 21)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subTitleReviewLabel: UILabel = {
        var label = UILabel()
        label.text = "Hãy đánh giá nhà để các khách thuê có thể biết được cảm nhận của bạn về nhà này nhé"
        label.numberOfLines = 3
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var feedBackImageView: UIImageView = {
        var imageview = UIImageView()
        imageview.image = UIImage(named: "image_feedback")
        imageview.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageview.heightAnchor.constraint(equalTo: imageview.widthAnchor, constant: 1).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var yourReviewView: UIView = {
        var view = UIView()
        view.heightAnchor.constraint(equalToConstant: 130).isActive = true
        view.backgroundColor = UIColor(red: 248/255, green: 188/255, blue: 161/255, alpha: 1)
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var photoStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.distribution = .fill
        stackview.axis = .vertical
        stackview.spacing = 10
        stackview.alignment = .leading
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var photoLabel: UILabel = {
        var label = UILabel()
        label.text = "Hình ảnh thực tế"
        label.font = .boldSystemFont(ofSize: 19)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var photoImageView: UIImageView = {
        var imageview = UIImageView()
        imageview.layer.cornerRadius = 10
        imageview.clipsToBounds = true
        imageview.widthAnchor.constraint(equalToConstant: 120).isActive = true
        imageview.heightAnchor.constraint(equalTo: imageview.widthAnchor, multiplier: 1).isActive = true
        imageview.image = UIImage(named: "image_house")
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var depcriptionStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var descriptionLabel: UILabel = {
        var label = UILabel()
        label.text = "Mô tả"
        label.font = .boldSystemFont(ofSize: 19)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var descriptionTextView: UILabel = {
        var textview = UILabel()
        textview.textColor = .black
        textview.sizeToFit()
        textview.numberOfLines = 0
        textview.text = "CCMN cao cấp Võng thị - Tây Hồ, Gần chợ Bưởi, Diện tích khoảng 50m2, Nhà vừa mới xây xong mới 100%, full đồ, Cửa khoá từ hiện đại, Cách hồ Tây 300m, bãi ô tô 30m, Thang máy, khoá cửa vân tay - Xe Free tầng 1"
        textview.translatesAutoresizingMaskIntoConstraints = false
        return textview
    }()
    var locationStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var locationLabel: UILabel = {
        var label = UILabel()
        label.text = "Vị trí"
        label.font = .boldSystemFont(ofSize: 19)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var addressLabelS: UILabel = {
        var label = UILabel()
        label.text = "1/53/514 Thuỵ Khuê"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var mapImageView: UIImageView = {
        var imageview = UIImageView()
        imageview.backgroundColor = .lightGray
        imageview.layer.cornerRadius = 10
        imageview.clipsToBounds = true
        imageview.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40).isActive = true
        imageview.heightAnchor.constraint(equalToConstant: 250).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    @objc func doReportButton(){
        let reportViewController = ReportHouseViewController()
        present(reportViewController, animated: true)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
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
        view.backgroundColor = .white
        view.addSubview(scrollView)
        scrollView.addSubview(imageView)
        scrollView.addSubview(detailView)
        detailView.addSubview(priceLabel)
        detailView.addSubview(addressStackView)
        addressStackView.addArrangedSubview(nameHouseLabel)
        addressStackView.addArrangedSubview(addressLabel)
        detailView.addSubview(profileStackView)
        profileStackView.addArrangedSubview(avatarImageView)
        profileStackView.addArrangedSubview(inforStackView)
        inforStackView.addArrangedSubview(nameLabel)
        inforStackView.addArrangedSubview(phoneLabel)
        detailView.addSubview(evaluateStackView)
        evaluateStackView.addArrangedSubview(valueLabel)
        evaluateStackView.addArrangedSubview(valueStackView)
        valueStackView.addArrangedSubview(starLabel)
        valueStackView.addArrangedSubview(seeValueStackView)
        seeValueStackView.addArrangedSubview(numberLabel)
        seeValueStackView.addArrangedSubview(seeButton)
        detailView.addSubview(reviewView)
        reviewView.addSubview(yourReviewView)
        yourReviewView.addSubview(reviewStackView)
        yourReviewView.addSubview(feedBackImageView)
        reviewStackView.addArrangedSubview(titleReviewLabel)
        reviewStackView.addArrangedSubview(subTitleReviewLabel)
        detailView.addSubview(photoStackView)
        photoStackView.addArrangedSubview(photoLabel)
        photoStackView.addArrangedSubview(photoImageView)
        detailView.addSubview(depcriptionStackView)
        depcriptionStackView.addArrangedSubview(descriptionLabel)
        depcriptionStackView.addArrangedSubview(descriptionTextView)
        detailView.addSubview(locationStackView)
        locationStackView.addArrangedSubview(locationLabel)
        locationStackView.addArrangedSubview(addressLabelS)
        locationStackView.addArrangedSubview(mapImageView)
                
        view.addSubview(navBarView)
        navBarView.addSubview(backButton)
        navBarView.addSubview(titleLabel)
        navBarView.addSubview(shareButton)
        view.addSubview(bottomView)
        bottomView.addSubview(bottomStackView)
        bottomStackView.addArrangedSubview(messButton)
        bottomStackView.addArrangedSubview(callButton)
        bottomStackView.addArrangedSubview(reportButton)
        bottomStackView.addArrangedSubview(likeButton)
        
        backButton.addTarget(self, action: #selector(dobackButton), for: .touchUpInside)
        reportButton.addTarget(self, action: #selector(doReportButton), for: .touchUpInside)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            scrollView.topAnchor.constraint(equalTo: navBarView.bottomAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: bottomView.topAnchor, constant: 0),
            
            imageView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
            imageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
            imageView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
            
            detailView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
            detailView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
            detailView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -50),
            detailView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0),
            
            priceLabel.centerXAnchor.constraint(equalTo: detailView.centerXAnchor, constant: 0),
            priceLabel.topAnchor.constraint(equalTo: detailView.topAnchor, constant: -22),
            
            addressStackView.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 20),
            addressStackView.leadingAnchor.constraint(equalTo: detailView.leadingAnchor, constant: 20),
            addressStackView.trailingAnchor.constraint(equalTo: detailView.trailingAnchor, constant: -20),
            
            profileStackView.topAnchor.constraint(equalTo: addressStackView.bottomAnchor, constant: 20),
            profileStackView.leadingAnchor.constraint(equalTo: detailView.leadingAnchor, constant: 20),
            profileStackView.trailingAnchor.constraint(equalTo: detailView.trailingAnchor, constant: -20),
            
            evaluateStackView.leadingAnchor.constraint(equalTo: detailView.leadingAnchor, constant: 20),
            evaluateStackView.trailingAnchor.constraint(equalTo: detailView.trailingAnchor, constant: -20),
            evaluateStackView.topAnchor.constraint(equalTo: profileStackView.bottomAnchor, constant: 20),
            
            reviewView.centerXAnchor.constraint(equalTo: detailView.centerXAnchor, constant: 0),
            reviewView.topAnchor.constraint(equalTo: evaluateStackView.bottomAnchor, constant: 10),
            
            yourReviewView.topAnchor.constraint(equalTo: reviewView.topAnchor, constant: 0),
            yourReviewView.leadingAnchor.constraint(equalTo: reviewView.leadingAnchor, constant: 0),
            yourReviewView.trailingAnchor.constraint(equalTo: reviewView.trailingAnchor, constant: 0),
            
            reviewStackView.topAnchor.constraint(equalTo: yourReviewView.topAnchor, constant: 10),
            reviewStackView.leadingAnchor.constraint(equalTo: yourReviewView.leadingAnchor, constant: 10),
            reviewStackView.trailingAnchor.constraint(equalTo: feedBackImageView.leadingAnchor, constant: 10),
            
            feedBackImageView.trailingAnchor.constraint(equalTo: yourReviewView.trailingAnchor, constant: -10),
            feedBackImageView.centerYAnchor.constraint(equalTo: yourReviewView.centerYAnchor, constant: 0),
            
            photoStackView.topAnchor.constraint(equalTo: reviewView.bottomAnchor, constant: 20),
            photoStackView.leadingAnchor.constraint(equalTo: detailView.leadingAnchor, constant: 20),
            photoStackView.trailingAnchor.constraint(equalTo: detailView.trailingAnchor, constant: -20),
            
            depcriptionStackView.leadingAnchor.constraint(equalTo: detailView.leadingAnchor, constant: 20),
            depcriptionStackView.trailingAnchor.constraint(equalTo: detailView.trailingAnchor, constant: -20),
            depcriptionStackView.topAnchor.constraint(equalTo: photoStackView.bottomAnchor, constant: 20),
            
            locationStackView.leadingAnchor.constraint(equalTo: detailView.leadingAnchor, constant: 20),
            locationStackView.trailingAnchor.constraint(equalTo: detailView.trailingAnchor, constant: -20),
            locationStackView.topAnchor.constraint(equalTo: depcriptionStackView.bottomAnchor, constant: 20),
            locationStackView.bottomAnchor.constraint(equalTo: detailView.bottomAnchor, constant: 0),
            
            navBarView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            navBarView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            navBarView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            
            backButton.leadingAnchor.constraint(equalTo: navBarView.leadingAnchor, constant: 20),
            backButton.topAnchor.constraint(equalTo: navBarView.topAnchor, constant: 40),
            backButton.bottomAnchor.constraint(equalTo: navBarView.bottomAnchor, constant: -20),
            
            titleLabel.centerXAnchor.constraint(equalTo: navBarView.centerXAnchor, constant: 0),
            titleLabel.centerYAnchor.constraint(equalTo: shareButton.centerYAnchor, constant: 0),

            shareButton.trailingAnchor.constraint(equalTo: navBarView.trailingAnchor, constant: -20),
            shareButton.topAnchor.constraint(equalTo: navBarView.topAnchor, constant: 40),
            shareButton.bottomAnchor.constraint(equalTo: navBarView.bottomAnchor, constant: -20),
                        
            bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            bottomStackView.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 10),
            bottomStackView.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -10),
            bottomStackView.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 20),
            bottomStackView.bottomAnchor.constraint(equalTo: bottomView.bottomAnchor, constant: -30)
        ])
    }
}
