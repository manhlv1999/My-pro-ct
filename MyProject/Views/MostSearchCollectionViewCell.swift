
import UIKit

class MostSearchCollectionViewCell: UICollectionViewCell {
    var imageView: UIImageView = {
        var imageview = UIImageView()
        imageview.layer.cornerRadius = 10
        imageview.clipsToBounds = true
        imageview.image = UIImage(named: "icon_house")
        imageview.heightAnchor.constraint(equalToConstant: 120).isActive = true
        imageview.widthAnchor.constraint(equalTo: imageview.heightAnchor, constant: 1).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var nameLabel: UILabel = {
        var label = UILabel()
        label.font = .boldSystemFont(ofSize: 15)
        label.text = "Hà Đông"
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
        setUpconstraints()
    }
    func setUpUI(){
        self.addSubview(imageView)
        self.addSubview(nameLabel)
    }
    func setUpconstraints(){
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
            
            nameLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0),
            nameLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
        ])
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
