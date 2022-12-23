//
//  HomeViewController.swift
//  NavController test
//
//  Created by Mikhail Tedeev on 09.12.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    var storage = Storage.shared.reminders
    
    //MARK: - View Items
    
    var tableView = UITableView()

    var safeArea: UILayoutGuide!
    
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
        tableView.reloadData()
    }
    
    //MARK: - Table View setup
    
    func setupTableView() {
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)

        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
        ])
        
        tableView.register(HomeTableViewCell.self, forCellReuseIdentifier: Constants.Cells.MainCell)
        
    }



}

//MARK: - UITableViewDataSourse, UITableViewDelegate

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard storage.isEmpty else {return storage.count}
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.Cells.MainCell, for: indexPath) as! HomeTableViewCell
        cell.reminderTextField.placeholder = "Add reminder"
        guard storage.isEmpty else {
            cell.reminderTextField.text = storage[indexPath.row].text
            return cell
            }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return false
    }

}
