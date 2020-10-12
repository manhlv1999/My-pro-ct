
import UIKit

class MostSearchViewController: UIViewController {
    
    var navView: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor(red: 34/255, green: 182/255, blue: 135/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.spacing = 15
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var searchStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.distribution = .fill
        stackview.spacing = 5
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var backButton: UIButton = {
        var button = UIButton()
        button.tintColor = .white
        button.setImage(UIImage(named: "icon_back"), for: .normal)
        button.widthAnchor.constraint(equalToConstant: 30).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var searchBar: UISearchBar = {
        var search = UISearchBar()
        search.placeholder = "Tìm kiếm theo địa điểm, tên nhà..."
        var textField = search.value(forKey: "searchField") as? UITextField
        textField?.backgroundColor = .white
        search.backgroundImage = UIImage()
        search.heightAnchor.constraint(equalToConstant: 44).isActive = true
        search.clipsToBounds = true
        search.image(for: .search, state: .normal)
        search.translatesAutoresizingMaskIntoConstraints = false
        return search
    }()
    var filterStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.distribution = .fillEqually
        stackview.spacing = 5
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var districtButton: UIButton = {
        var button = UIButton()
        button.setTitle("Quận/Huyện", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 19)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var communeButton: UIButton = {
        var button = UIButton()
        button.setTitle("Xã/Phường", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 19)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var priceButton: UIButton = {
        var button = UIButton()
        button.titleLabel?.font = .systemFont(ofSize: 19)
        button.setTitle("Khoảng giá", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "Bạn đang lọc theo :"
        label.textColor = .white
        label.font = .systemFont(ofSize: 19)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subLabel: UILabel = {
        var label = UILabel()
        label.text = "Cầu Giấy"
        label.heightAnchor.constraint(equalToConstant: 44).isActive = true
        label.layer.cornerRadius = 5
        label.sizeToFit()
        label.clipsToBounds = true
        label.textColor = .black
        label.backgroundColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var tableView: UITableView = {
        var tableview = UITableView()
        tableview.rowHeight = UITableView.automaticDimension
        tableview.estimatedRowHeight = 200
        tableview.tableFooterView = UIView()
        tableview.register(SearchTableViewCell.self, forCellReuseIdentifier: "SearchTableViewCell")
        tableview.translatesAutoresizingMaskIntoConstraints = false
        return tableview
    }()
    @objc func dobackButton(){
        self.navigationController?.popViewController(animated: true)
    }
    @objc override func dismissKeybroad(){
        view.endEditing(true)
    }
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
        tableView.separatorStyle = .none
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(navView)
        navView.addSubview(stackView)
        stackView.addArrangedSubview(searchStackView)
        searchStackView.addArrangedSubview(backButton)
        searchStackView.addArrangedSubview(searchBar)
        stackView.addArrangedSubview(filterStackView)
        filterStackView.addArrangedSubview(districtButton)
        filterStackView.addArrangedSubview(communeButton)
        filterStackView.addArrangedSubview(priceButton)
        stackView.addArrangedSubview(titleLabel)
        navView.addSubview(subLabel)
        view.addSubview(tableView)
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeybroad))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        
        backButton.addTarget(self, action: #selector(dobackButton), for: .touchUpInside)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            navView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            navView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            navView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            
            stackView.leadingAnchor.constraint(equalTo: navView.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: navView.trailingAnchor, constant: -20),
            stackView.topAnchor.constraint(equalTo: navView.topAnchor, constant: 50),
            
            subLabel.leadingAnchor.constraint(equalTo: navView.leadingAnchor, constant: 20),
            subLabel.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 15),
            subLabel.bottomAnchor.constraint(equalTo: navView.bottomAnchor, constant: -15),
            
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.topAnchor.constraint(equalTo: navView.bottomAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
        ])
    }
}
extension MostSearchViewController: UITableViewDelegate{
    
}
extension MostSearchViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell", for: indexPath) as! SearchTableViewCell
        return cell
    }
    
    
}
