
import UIKit

class ReportHouseViewController: UIViewController {

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
    var titlenavLabel: UILabel = {
        var label = UILabel()
        label.text = "BÁO CÁO NHÀ"
        label.addCharacterSpacing()
        label.font = .systemFont(ofSize: 19)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var tableView: UITableView = {
        var tableview = UITableView()
        tableview.rowHeight = UITableView.automaticDimension
        tableview.estimatedRowHeight = 300
        tableview.register(ReportHouseTableViewCell.self, forCellReuseIdentifier: "ReportHouseTableViewCell")
        tableview.translatesAutoresizingMaskIntoConstraints = false
        return tableview
    }()
    @objc func doCancelButton(){
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()
        setupUI()
    }
    func setupUI(){
        view.addSubview(navView)
        navView.addSubview(cancelButton)
        navView.addSubview(titlenavLabel)
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        
        cancelButton.addTarget(self, action: #selector(doCancelButton), for: .touchUpInside)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            navView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            navView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            navView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),

            titlenavLabel.centerXAnchor.constraint(equalTo: navView.centerXAnchor, constant: 0),
            titlenavLabel.topAnchor.constraint(equalTo: cancelButton.topAnchor, constant: 0),
            titlenavLabel.bottomAnchor.constraint(equalTo: cancelButton.bottomAnchor, constant: 0),

            cancelButton.topAnchor.constraint(equalTo: navView.topAnchor, constant: 20),
            cancelButton.leadingAnchor.constraint(equalTo: navView.leadingAnchor, constant: 10),
            cancelButton.bottomAnchor.constraint(equalTo: navView.bottomAnchor, constant: -20),
            
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
        ])
    }
}
extension ReportHouseViewController: UITableViewDelegate {
    
}
extension ReportHouseViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReportHouseTableViewCell", for: indexPath) as! ReportHouseTableViewCell
        return cell
    }
    
    
}
