
import UIKit

class HightlightCollectionViewCell: UICollectionViewCell {
    var borderView: UIView = {
        var view = UIView()
        view.layer.cornerRadius = 10
        view.layer.borderWidth = 0.5
        view.heightAnchor.constraint(equalToConstant: 240).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var imageView: UIImageView = {
        var imageview = UIImageView()
        imageview.layer.cornerRadius = 10
        imageview.clipsToBounds = true
        imageview.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        imageview.image = UIImage(named: "icon_house")
        imageview.heightAnchor.constraint(equalToConstant: 120).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.distribution = .fill
        stackview.axis = .vertical
        stackview.alignment = .leading
        stackview.spacing = 5
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "Võng Thị 10"
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var princeLabel: UILabel = {
        var label = UILabel()
        label.text = "Liên hệ"
        
        label.textColor = UIColor(red: 33/255, green: 189/255, blue: 176/255, alpha: 1)
        label.font = .systemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var addressLabel: UILabel = {
        var label = UILabel()
        label.numberOfLines = 3
        label.textColor = .gray
        label.font = .systemFont(ofSize: 13)
        label.text = "1/53/514 Thuỵ khuê, Bưởi, tây Hồ, Hà Nội"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
        setUPConstraints()
    }
    func setUpUI(){
        self.addSubview(borderView)
        self.addSubview(imageView)
        self.addSubview(stackView)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(princeLabel)
        stackView.addArrangedSubview(addressLabel)
    }
    func setUPConstraints(){
        NSLayoutConstraint.activate([
            borderView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            borderView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            borderView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            borderView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
            
            imageView.leadingAnchor.constraint(equalTo: borderView.leadingAnchor, constant: 0),
            imageView.trailingAnchor.constraint(equalTo: borderView.trailingAnchor, constant: 0),
            imageView.topAnchor.constraint(equalTo: borderView.topAnchor, constant: 0),
            
            stackView.leadingAnchor.constraint(equalTo: borderView.leadingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: borderView.trailingAnchor, constant: -10),
            stackView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
            //stackView.bottomAnchor.constraint(equalTo: borderView.bottomAnchor, constant: -10)
        ])
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
