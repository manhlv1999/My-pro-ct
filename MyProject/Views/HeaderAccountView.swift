import UIKit

class HeaderAccountView: UITableViewHeaderFooterView {
    
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.spacing = 20
        stackview.alignment = .center
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var avatarImageView: UIImageView = {
        var imageview = UIImageView()
        imageview.layer.cornerRadius = 10
        imageview.clipsToBounds = true
        imageview.backgroundColor = .orange
        imageview.image = UIImage(named: "image_avatar")
        imageview.widthAnchor.constraint(equalToConstant: 120).isActive = true
        imageview.heightAnchor.constraint(equalTo: imageview.widthAnchor, multiplier: 1).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var namelabel: UILabel = {
        var label = UILabel()
        label.font = .systemFont(ofSize: 17)
        label.text = "Lê Viết Mạnh"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var rolelabel: UILabel = {
        var label = UILabel()
        label.font = .systemFont(ofSize: 17)
        label.text = "Khách thuê"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupUI()
        setupConstraints()
    }
    func setupUI(){
        self.addSubview(stackView)
        stackView.addArrangedSubview(avatarImageView)
        stackView.addArrangedSubview(namelabel)
        stackView.addArrangedSubview(rolelabel)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0),
            stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 50),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -30)
        ])
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

}
