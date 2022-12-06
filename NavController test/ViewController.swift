//
//  ViewController.swift
//  NavController test
//
//  Created by Mikhail Tedeev on 04.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - View Elements
    let usernameTextField = UITextField()
    let passwordTextField = UITextField()
    let signInButton = UIButton()
    let signUpButton = UIButton()
    
    //MARK: - View did load
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameAppearance()
        passwordAppearance()
        signInButtonAppearance()
        signUpButtonAppearance()
        
        
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
    
    func signInButtonAppearance() {
        view.addSubview(signInButton)
        //color
        signInButton.setTitle("Sign in", for: .normal)
        signInButton.setTitleColor(.black, for: .normal)
        //frame
        signInButton.frame = CGRect(x: 150, y: 490, width: 120, height: 40)
        
        //
        signInButton.layer.borderColor = UIColor.blue.cgColor
        signInButton.layer.borderWidth = 1
        signInButton.layer.cornerRadius = .pi

    }
    
    func signUpButtonAppearance() {
        view.addSubview(signUpButton)
    }
}

