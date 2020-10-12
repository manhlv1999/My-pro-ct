import UIKit

class NewsCollectionViewCell: UICollectionViewCell {
    
    var imageView: UIImageView = {
        var imageview = UIImageView()
        imageview.image = UIImage(named: "icon_house")
        imageview.layer.cornerRadius = 10
        imageview.clipsToBounds = true
        imageview.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageview.heightAnchor.constraint(equalTo: imageview.widthAnchor, multiplier: 1).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.distribution = .fill
        stackview.axis = .vertical
        stackview.alignment = .leading
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.numberOfLines = 2
        label.font = .systemFont(ofSize: 15)
        label.text = "Phòng trọ rộng 30m2 tại Long biên phòng đẹp sạch sẽ giá thuê hợp lý"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var princeLabel: UILabel = {
        var label = UILabel()
        label.textColor = UIColor(red: 33/255, green: 189/255, blue: 176/255, alpha: 1)
        label.text = "3.8 Triệu"
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subTitleLabel: UILabel = {
        var label = UILabel()
        label.font = .systemFont(ofSize: 13)
        label.textColor = .gray
        label.text = "Số nhà 23, ngõ 532/23, tổ 20, Ngọc Thuỵ, Tây Hồ , Hà Nội"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        setupConstraints()
    }
    func setupUI(){
        self.addSubview(imageView)
        self.addSubview(stackView)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(princeLabel)
        stackView.addArrangedSubview(subTitleLabel)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
            
            stackView.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 10),
            stackView.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 0),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            stackView.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 0)
        ])
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
