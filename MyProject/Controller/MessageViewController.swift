import UIKit

class MessageViewController: UIViewController {

    var navView: UIView = {
        var view = UIView()
        view.layer.cornerRadius = 20
        view.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        view.setGradientBackground(colorOne: UIColor.red, colorTwo: UIColor.black)
        view.backgroundColor = UIColor(red: 34/255, green: 182/255, blue: 135/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var searchBar: UISearchBar = {
        var search = UISearchBar()
        search.placeholder = "Tìm kiếm hội thoại"
        var textField = search.value(forKey: "searchField") as? UITextField
        textField?.backgroundColor = .white
        search.backgroundImage = UIImage()
        search.image(for: .search, state: .normal)
        
        search.translatesAutoresizingMaskIntoConstraints = false
        return search
    }()
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }
    func setupUI(){
        view.backgroundColor = .white
        view.addSubview(navView)
        navView.addSubview(searchBar)
        hideKeyBoardWhenTapped()
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            navView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            navView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            navView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            
            searchBar.leadingAnchor.constraint(equalTo: navView.leadingAnchor, constant: 20),
            searchBar.trailingAnchor.constraint(equalTo: navView.trailingAnchor, constant: -20),
            searchBar.topAnchor.constraint(equalTo: navView.topAnchor, constant: 50),
            searchBar.bottomAnchor.constraint(equalTo: navView.bottomAnchor, constant: -20),
        ])
    }
}


