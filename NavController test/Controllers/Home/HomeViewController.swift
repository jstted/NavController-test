//
//  HomeViewController.swift
//  NavController test
//
//  Created by Mikhail Tedeev on 09.12.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    var tableView = UITableView()

    var safeArea: UILayoutGuide!
    let numbers = ["one","two", "three"]
    
    //MARK: - View Controllers cycles
    
    override func loadView() {
        super.loadView()
        navigationItem.hidesBackButton = true
        view.backgroundColor = .systemRed
        safeArea = view.layoutMarginsGuide
        setupTableView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - Table View setup
    
    func setupTableView() {
        
        self.tableView.dataSource = self
        
        view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false

        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true

        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true

        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true

        tableView.register(HomeTableViewCell.self, forCellReuseIdentifier: Constants.Cells.MainCell)
        
    }



}

//MARK: - UITableViewDataSourse

extension HomeViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.Cells.MainCell, for: indexPath) as! HomeTableViewCell
        cell.reminderTextField.placeholder = "Add reminder"
        
        return cell
    }


}
