//
//  HomeTableViewCell.swift
//  NavController test
//
//  Created by Mikhail Tedeev on 23.12.2022.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    var homeVC = HomeViewController()
    
    //MARK: - View Items
    
    var reminderTextField = UITextField()
    
    
    
    //MARK: - Override Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupReminderTextField()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupReminderTextField() {
        contentView.addSubview(reminderTextField)
        reminderTextField.delegate = self
        reminderTextField.translatesAutoresizingMaskIntoConstraints = false
        reminderTextField.returnKeyType = .done
        NSLayoutConstraint.activate([
            reminderTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            reminderTextField.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            reminderTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -32),
            reminderTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
        ])

    }
    
}

extension HomeTableViewCell: UITextFieldDelegate {
    
}
