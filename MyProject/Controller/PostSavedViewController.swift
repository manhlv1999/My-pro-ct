import UIKit

class PostSavedViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }
    @objc func doBackButton (){
        self.navigationController?.popViewController(animated: true)
    }
    func setupUI(){
        view.backgroundColor = .white
        title = "TIN ĐĂNG DÃ LƯU"
        let backButton = UIBarButtonItem(image: UIImage(named: "icon_back"), style: .done, target: self, action: #selector(doBackButton))
        navigationItem.leftBarButtonItem = backButton
    }
    func setupConstraints(){
        
    }
}
