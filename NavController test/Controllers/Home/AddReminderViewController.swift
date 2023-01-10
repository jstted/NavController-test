//
//  AddReminderViewController.swift
//  NavController test
//
//  Created by Mikhail Tedeev on 29.12.2022.
//

import UIKit

class AddReminderViewController: UIViewController {

    var reminderTextField = UITextField()
    var noteTextView = UITextView()
    var saveButton = UIButton()
    var cancelButton = UIButton()
    var safeArea: UILayoutGuide!

    //MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupReminderTextField()
        setupNoteTextView()
        setupSaveButton()
        safeArea = view.layoutMarginsGuide
        navigationItem.title = "hi"
    }
    
    //MARK: - Setup Views
    
    private func setupSaveButton() {
        
        view.addSubview(saveButton)
        
        saveButton.setTitle("Save", for: .normal)
        saveButton.titleLabel?.font = .boldSystemFont(ofSize: 17)
        saveButton.setTitleColor(.black, for: .normal)
        saveButton.setTitleColor(.darkGray, for: .highlighted)
        
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            saveButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 16),
            saveButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
        
    }
    
    private func setupReminderTextField() {
        
        view.addSubview(reminderTextField)
        
        reminderTextField.placeholder = "Reminder"
        
        
        reminderTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            reminderTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 48),
            reminderTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            reminderTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])

    }
    
    private func setupNoteTextView() {
        
        
        
        noteTextView = UITextView(frame: .zero)
        noteTextView.isEditable = true
        noteTextView.textColor = .black
        noteTextView.
        noteTextView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        noteTextView.text = """
Terminating app due to uncaught exception 'NSGenericException', reason: 'Unable to activate constraint with anchors and because they have no common ancestor. Does the constraint or its anchors reference items in different view hierarchies? That's illegal.'
"""
        
        
        view.addSubview(noteTextView)
        noteTextView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            noteTextView.topAnchor.constraint(equalTo: reminderTextField.bottomAnchor, constant: 16),
            noteTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            noteTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            noteTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 16)
        ])
    }
        
}
