import UIKit

class DeclareViewController: UIViewController {

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
    @objc func doAddButton (){
        let homeDeclaceViewController = HomeDeclaceViewController()
        present(homeDeclaceViewController, animated: true)
    }
    func setupUI(){
        view.backgroundColor = .white
        title = "NHÀ TRỌ ĐÃ KHAI BÁO"
        let backButton = UIBarButtonItem(image: UIImage(named: "icon_back"), style: .done, target: self, action: #selector(doBackButton))
        navigationItem.leftBarButtonItem = backButton
        let addButon = UIBarButtonItem(image: UIImage(named: "icon_add"), style: .plain, target: self, action: #selector(doAddButton))
        navigationItem.rightBarButtonItem = addButon
        navigationController?.navigationBar.tintColor = .black
    }
    func setupConstraints(){
        
    }

}
