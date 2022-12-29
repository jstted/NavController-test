//
//  HomeViewController.swift
//  NavController test
//
//  Created by Mikhail Tedeev on 09.12.2022.
//

import UIKit

class HomeViewController: UIViewController {
    var storage: [ReminderStruct] = [ReminderStruct(text: "test og", date: .now)]
    
    //MARK: - View Items
    
    var tableView = UITableView()
    var safeArea: UILayoutGuide!
    var addButton = UIBarButtonItem()
    
    //MARK: - View Controllers cycles
    
    override func loadView() {
        super.loadView()
        navigationItem.hidesBackButton = true
        view.backgroundColor = .white
        safeArea = view.layoutMarginsGuide
        setupTableView()
        setupAddButton()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
        hideKeyboardWhenTappedAround()
    }
    
    //MARK: - Setup Views

    private func setupTableView() {
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)

        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: safeArea.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
        ])
        
        tableView.register(HomeTableViewCell.self, forCellReuseIdentifier: Constants.Cells.MainCell)
        
    }
        
    private func setupAddButton() {
        
        addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonAction))
        navigationItem.rightBarButtonItem = addButton
        addButton.tintColor = .black
        
    }

    //MARK: - Setup actions
    
    @objc func addButtonAction() {
        present(AddReminderViewController(), animated: true)
    }

}

//MARK: - UITableViewDataSourse, UITableViewDelegate

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {

    //Table view extentions
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return storage.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.Cells.MainCell, for: indexPath) as! HomeTableViewCell
        cell.reminderTextField.placeholder = "Write something"
        cell.reminderTextField.text = storage[indexPath.row].text
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return false
    }

    //Hide keyboard extentions
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(HomeViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    
}
