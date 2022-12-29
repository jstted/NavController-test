//
//  AddReminderViewController.swift
//  NavController test
//
//  Created by Mikhail Tedeev on 29.12.2022.
//

import UIKit

class AddReminderViewController: UIViewController {

    var reminderTextField = UITextField()
    var noteTextField = UITextField()
    var saveButton = UIButton()
    var cancelButton = UIButton()
    var safeArea: UILayoutGuide!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupReminderTextField()
        setupNoteTextField()
        safeArea = view.layoutMarginsGuide
        navigationItem.title = "hi"
    }
    
    //MARK: - Setup Views
    
    private func setupReminderTextField() {
        
        view.addSubview(reminderTextField)
        
    }
    
    private func setupNoteTextField() {
        
        view.addSubview(noteTextField)
        
        
    }
    
    private func setupSaveButton() {
        
    }

}
