
import UIKit

class RequestSearchViewController: UIViewController {
    
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
    var titleLabel: UILabel = {
        var lable = UILabel()
        lable.text = "TÌM THUÊ NHÀ"
        lable.font = .systemFont(ofSize: 19)
        lable.addCharacterSpacing()
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var scrollView: UIScrollView = {
        var scrollview = UIScrollView()
        scrollview.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        scrollview.translatesAutoresizingMaskIntoConstraints = false
        return scrollview
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }
    @objc func doCancelButton(){
        let alert = UIAlertController(title: "Chú ý", message: "Thao tác này sẽ huỷ tất cả các thay dổi của bạn", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Đồng ý", style: .default, handler: { (action) in
            self.dismiss(animated: true, completion: nil)
        }))
        alert.addAction(UIAlertAction(title: "Huỷ", style: .cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
    }
    func setupUI(){
        view.backgroundColor = .white
        view.addSubview(navView)
        navView.addSubview(cancelButton)
        navView.addSubview(titleLabel)
        view.addSubview(scrollView)
        
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
        ])
        
    }

}
