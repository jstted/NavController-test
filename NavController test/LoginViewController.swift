//
//  ViewController.swift
//  NavController test
//
//  Created by Mikhail Tedeev on 04.12.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: - View Elements
    
    let usernameTextField = UITextField()
    let passwordTextField = UITextField()
    let signInButton = UIButton()
    let signUpButton = UIButton()
    
    //MARK: - View did load
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
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
        
        //Title
        signInButton.setTitle("Sign in", for: .normal)
        signInButton.setTitleColor(.white, for: .normal)
        
        //Position
        signInButton.frame = CGRect(x: 150, y: 490, width: 120, height: 40)
        
        //Background
        signInButton.backgroundColor = .systemBlue
        signInButton.layer.cornerRadius = .pi

    }
    
    func signUpButtonAppearance() {
        view.addSubview(signUpButton)
        
        //Title
        signUpButton.setTitle("Sign up", for: .normal)
        signUpButton.setTitleColor(.systemBlue, for: .normal)
        
        //Position
        signUpButton.frame = CGRect(x: 150, y: 550, width: 120, height: 40)
        
        //Background
        signUpButton.layer.cornerRadius = .pi

        //Target
        signUpButton.addTarget(self, action: #selector(signUpaction), for: .touchUpInside)
    }
    
    //MARK: - Action methods
    
    //Sign up action
    @objc private func signUpaction() {
        
    }
    
    
    
    
}

