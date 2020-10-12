import UIKit
import Firebase

class AccountViewController: UIViewController {
    
    var tableView: UITableView = {
        var tableview = UITableView()
        tableview.rowHeight = UITableView.automaticDimension
        tableview.estimatedRowHeight = 200
        tableview.tableFooterView = UIView()
        tableview.register(AccountTableViewCell.self, forCellReuseIdentifier: "AccountTableViewCell")
        tableview.register(HeaderAccountView.self, forHeaderFooterViewReuseIdentifier: "HeaderAccountView")
        tableview.translatesAutoresizingMaskIntoConstraints = false
        return tableview
    }()

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }
    func setupUI(){
        view.backgroundColor = .white
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
        ])
    }
    @objc func doTapHeader(){
        let profileViewController = ProfileViewController()
        profileViewController.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(profileViewController, animated: true)
    }
}
extension AccountViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "HeaderAccountView") as! HeaderAccountView
        header.backgroundColor = UIColor(red: 33/255, green: 189/255, blue: 176/255, alpha: 1)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(doTapHeader))
        header.addGestureRecognizer(tap)
        return header
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 5 {
            do {
                try Auth.auth().signOut()
                let alert = UIAlertController(title: "Chú ý", message: "Bạn có muốn đăng xuất", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                UIApplication.shared.currentWindow?.rootViewController = UINavigationController(rootViewController: LoginViewController())
                    UserModel.delete()
                }))
                alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
                
                self.present(alert, animated: true, completion: nil)
            } catch let error {
                print("Error : ", error.localizedDescription)
            }
        } else if indexPath.row == 0{
            let homeFavoriteViewController = HomeFavoriteViewController()
            homeFavoriteViewController.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(homeFavoriteViewController, animated: true)
        } else if indexPath.row == 1 {
            let postSaveViewController = PostSavedViewController()
            postSaveViewController.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(postSaveViewController, animated: true)
        } else if indexPath.row == 2 {
            let declareViewController = DeclareViewController()
            declareViewController.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(declareViewController, animated: true)
        }
    }
}
extension AccountViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AccountTableViewCell", for: indexPath) as! AccountTableViewCell
        return cell
    }
}
