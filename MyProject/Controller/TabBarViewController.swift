
import UIKit

class TabBarViewController: UITabBarController {

    let searchNavViewController = UINavigationController(rootViewController: SearchViewController())
    
    let mapNavViewController = UINavigationController(rootViewController: MapViewController())
    
    let messageViewController = UINavigationController(rootViewController: MessageViewController())
    
    let accountViewController = UINavigationController(rootViewController: AccountViewController())
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
        self.tabBar.backgroundColor = .white
        self.viewControllers = [searchNavViewController, mapNavViewController, messageViewController, accountViewController
        ]
        self.tabBar.tintColor = UIColor(red: 33/255, green: 189/255, blue: 176/255, alpha: 1)
        searchNavViewController.tabBarItem = UITabBarItem(title: "Search", image: UIImage(named: "icon_search"), tag: 3)
        mapNavViewController.tabBarItem = UITabBarItem(title: "Bản đồ", image: UIImage(named: "icon_map"), tag: 3)
        messageViewController.tabBarItem = UITabBarItem(title: "Tin nhắn", image: UIImage(named: "icon_mess"), tag: 3)
        accountViewController.tabBarItem = UITabBarItem(title: "Tài Khoản", image: UIImage(named: "icon_account"), tag: 3)
        
        
    }
}
