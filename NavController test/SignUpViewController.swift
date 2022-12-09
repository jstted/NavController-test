//
//  SignUpViewController.swift
//  NavController test
//
//  Created by Mikhail Tedeev on 06.12.2022.
//

import UIKit

class SignUpViewController: UIViewController {

    let usernameTextField = UITextField()
    let passwordTextField = UITextField()
    let passwordAgainTextField = UITextField()
    var registerButton = UIButton()
    var navigationBar = UINavigationBar()
    var cancelNavigationItem = UINavigationItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        usernameAppearance()
        passwordAppearance()
        registerButtonAppearance()
    }
    
    //MARK: - Setup View Methods
    
    func usernameAppearance() {
        view.addSubview(usernameTextField)
        usernameTextField.frame = CGRect(x: 85, y: 290, width: 220, height: 40)
        usernameTextField.placeholder = "Username"
        usernameTextField.borderStyle = .roundedRect
        usernameTextField.autocorrectionType = .no
        usernameTextField.spellCheckingType = .no
    }
    
    func passwordAppearance() {
        view.addSubview(passwordTextField)
        passwordTextField.frame = CGRect(x: 85, y: 390, width: 220, height: 40)
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.autocorrectionType = .no
        passwordTextField.spellCheckingType = .no
    }
    
    func registerButtonAppearance() {
        registerButton = UIButton(type: .system)
        view.addSubview(registerButton)
        
        //Title
        registerButton.setTitle("Sign in", for: .normal)
        registerButton.setTitleColor(.white, for: .normal)
        
        //Position
        registerButton.frame = CGRect(x: 135, y: 490, width: 120, height: 40)
        
        //Background
        registerButton.backgroundColor = .systemBlue
        registerButton.layer.cornerRadius = .pi
    }

    
    

}
