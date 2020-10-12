import UIKit

class SearchViewController: UIViewController {
    
    var navBar: UIView = {
        var view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.distribution = .fill
        stackview.spacing = 5
        stackview.alignment = .fill
        stackview.alignment = .leading
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "TÌM NHÀ/PHÒNG TẠI"
        label.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 2 * 4/5).isActive = true
        label.font = .systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var addLabel: UILabel = {
        var label = UILabel()
        label.text = "HÀ NỘI"
        label.adjustsFontSizeToFitWidth = true
        label.sizeToFit()
        label.numberOfLines = 1
        label.font = .boldSystemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var arrowButton: UIButton = {
        var button = UIButton()
        button.setImage(UIImage(named: "down_arrow"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var notiButton: UIButton = {
        var button = UIButton()
        button.tintColor = .black
        button.setImage(UIImage(named: "icon_noti"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var searchBar: UISearchBar = {
        var search = UISearchBar()
        search.heightAnchor.constraint(equalToConstant: 50).isActive = true
        search.placeholder = "Tìm theo địa điểm, tên nhà..."
        search.image(for: .search, state: .normal)
        search.backgroundImage = UIImage()
        search.translatesAutoresizingMaskIntoConstraints = false
        return search
    }()
    var collectionView: UICollectionView = {
        let layer = UICollectionViewFlowLayout()
        layer.scrollDirection = .vertical
        var collectionview = UICollectionView(frame: .zero, collectionViewLayout: layer)
        collectionview.register(MostSearchCollectionViewCell.self, forCellWithReuseIdentifier: "MostSearchCollectionViewCell")
        collectionview.register(HightlightCollectionViewCell.self, forCellWithReuseIdentifier: "HightlightCollectionViewCell")
        collectionview.register(NewsCollectionViewCell.self, forCellWithReuseIdentifier: "NewsCollectionViewCell")
        collectionview.register(SearchHeaaderView.self, forSupplementaryViewOfKind:  UICollectionView.elementKindSectionHeader, withReuseIdentifier: "SearchHeaaderView")
        collectionview.backgroundColor = .clear
        collectionview.translatesAutoresizingMaskIntoConstraints = false
        return collectionview
    }()
    var addSearchButton: UIButton = {
        var button = UIButton()
        button.setTitle("+ TẠO YÊU CẦU TÌM KIẾM", for: .normal)
        button.layer.cornerRadius = 22
        button.titleLabel?.font = .systemFont(ofSize: 15)
        button.backgroundColor = UIColor(red: 250/255, green: 120/255, blue: 67/255, alpha: 1)
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true
        button.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/2).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    @objc func dorequestButton(){
        let requestViewController = RequestSearchViewController()
        requestViewController.hidesBottomBarWhenPushed = true
        present(requestViewController, animated: true)
    }
    @objc func doNotiButton(){
        let notiViewController = NotificationViewController()
        notiViewController.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(notiViewController, animated: true)
    }
    @objc override func dismissKeybroad(){
        view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }
    func setupUI(){
        view.backgroundColor = .white
        view.addSubview(navBar)
        navBar.addSubview(stackView)
        navBar.addSubview(searchBar)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(addLabel)
        stackView.addArrangedSubview(arrowButton)
        stackView.addArrangedSubview(notiButton)
        collectionView.delegate = self
        collectionView.dataSource = self
        //hideKeyBoardWhenTapped()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeybroad))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        view.addSubview(collectionView)
        view.addSubview(addSearchButton)
        
        addSearchButton.addTarget(self, action: #selector(dorequestButton), for: .touchUpInside)
        notiButton.addTarget(self, action: #selector(doNotiButton), for: .touchUpInside)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            navBar.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            
            stackView.leadingAnchor.constraint(equalTo: navBar.leadingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: navBar.trailingAnchor, constant: -10),
            stackView.topAnchor.constraint(equalTo: navBar.topAnchor, constant: 30),
            
            searchBar.leadingAnchor.constraint(equalTo: navBar.leadingAnchor, constant: 10),
            searchBar.trailingAnchor.constraint(equalTo: navBar.trailingAnchor, constant: -10),
            searchBar.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 10),
            searchBar.bottomAnchor.constraint(equalTo: navBar.bottomAnchor, constant: 0),
            
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            collectionView.topAnchor.constraint(equalTo: navBar.bottomAnchor, constant: 10),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            addSearchButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            addSearchButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
        ])
    }
}
extension SearchViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 50)
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let sectionHeader = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "SearchHeaaderView", for: indexPath) as! SearchHeaaderView
        return sectionHeader
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 10, right: 10)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            let searchController = MostSearchViewController()
            searchController.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(searchController, animated: true)
        } else {
            let detailHouseController = DetailHouseDetailViewController()
            detailHouseController.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(detailHouseController, animated: true)
        }
    }
}
extension SearchViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 6
        }
        else if section == 1 {
            return 10
        }
        else {
            return 10
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MostSearchCollectionViewCell", for: indexPath) as! MostSearchCollectionViewCell
            return cell
        }
        else if indexPath.section == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HightlightCollectionViewCell", for: indexPath) as! HightlightCollectionViewCell
            return cell
        }
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewsCollectionViewCell", for: indexPath) as! NewsCollectionViewCell
            return cell
        }
    }
}
extension SearchViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenWidth = UIScreen.main.bounds.width
        if indexPath.section == 0 {
            return CGSize(width: (screenWidth - 40) / 3 - 1, height: 120)
        } else if indexPath.section == 1 {
            return CGSize(width: (screenWidth - 30) / 2 , height: 240)
        } else {
            return CGSize(width: screenWidth - 40, height: 100)
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}
