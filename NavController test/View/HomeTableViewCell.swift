//
//  HomeTableViewCell.swift
//  NavController test
//
//  Created by Mikhail Tedeev on 23.12.2022.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    //MARK: - View Items
    
    var reminderTextField = UITextField()
    
    
    //MARK: - Override Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(reminderTextField)
        reminderTextField.translatesAutoresizingMaskIntoConstraints = false
        reminderTextField.topAnchor.constraint(equalTo: self.topAnchor, constant: 40)
        reminderTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 40)
        reminderTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: -40)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
