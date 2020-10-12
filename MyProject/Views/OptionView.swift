
import UIKit

class OptionView: UIView {
    var imageView: UIImageView = {
        var imageview = UIImageView()
        imageview.image = UIImage(named: "image_avatar")
        imageview.widthAnchor.constraint(equalToConstant: 70).isActive = true
        imageview.layer.cornerRadius = 35
        imageview.clipsToBounds = true
        imageview.heightAnchor.constraint(equalTo: imageview.widthAnchor, multiplier: 1).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "Chủ nhà"
        label.textColor = .gray
        label.font = .systemFont(ofSize: 15)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        setupConstraints()
    }
    func setupUI(){
        self.layer.cornerRadius = 10
        self.addSubview(imageView)
        self.addSubview(titleLabel)
    }
    func setupConstraints(){
       NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            titleLabel.topAnchor.constraint(equalTo: self.imageView.bottomAnchor, constant: 5),
            titleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
        ])
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

}
