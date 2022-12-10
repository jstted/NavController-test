//
//  ViewController.swift
//  NavController test
//
//  Created by Mikhail Tedeev on 04.12.2022.
//

import UIKit

class LogInViewController: UIViewController {
    
    //MARK: - View Elements
    
    let usernameTextField = UITextField()
    let passwordTextField = UITextField()
    var signInButton = UIButton()
    var signUpButton = UIButton()
    let data = Authorization()
    
    //MARK: - View did load
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = .black
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
        usernameTextField.autocapitalizationType = .none
    }
    
    func passwordAppearance() {
        view.addSubview(passwordTextField)
        passwordTextField.frame = CGRect(x: 85, y: 390, width: 220, height: 40)
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.autocorrectionType = .no
        passwordTextField.spellCheckingType = .no
        passwordTextField.autocapitalizationType = .none
        passwordTextField.keyboardType = .default
        passwordTextField.textContentType = .oneTimeCode
    }
    
    func signInButtonAppearance() {
        signInButton = UIButton(type: .system)
        view.addSubview(signInButton)
        
        //Title
        signInButton.setTitle("Sign in", for: .normal)
        signInButton.setTitleColor(.white, for: .normal)
        
        //Position
        signInButton.frame = CGRect(x: 135, y: 490, width: 120, height: 40)
        
        //Background
        signInButton.backgroundColor = .black
        signInButton.layer.cornerRadius = .pi

        //Target
        signInButton.addTarget(self, action: #selector(logInAction), for: .touchUpInside)
    }
    
    func signUpButtonAppearance() {
        signUpButton = UIButton(type: .system)
        view.addSubview(signUpButton)
        
        //Title
        signUpButton.setTitle("Sign up", for: .normal)
        signUpButton.setTitleColor(.black, for: .normal)
        
        //Position
        signUpButton.frame = CGRect(x: 135, y: 550, width: 120, height: 40)
        
        //Background
        signUpButton.layer.cornerRadius = .pi

        //Target
        signUpButton.addTarget(self, action: #selector(signUpAction), for: .touchUpInside)
    }
    
    //MARK: - Action methods
    
    //Sign up Action
    @objc private func signUpAction(sender: Any) {
        let signUpViewController = SignUpViewController()
        navigationController?.pushViewController(signUpViewController, animated: true)
    }
    
    //Login Action
    @objc private func logInAction(sender: Any) {
        guard (usernameTextField.text?.isEmpty) != nil else { return }
        guard (passwordTextField.text?.isEmpty) != nil else { return }
        
        guard data.checkUsername(usernameTextField.text) else { return print("pizda1") }
        guard data.checkPassword(passwordTextField.text) else { return print("pizda2") }
        
        let homeViewController = HomeViewController()
        navigationController?.pushViewController(homeViewController, animated: true)
        
    }
    
    
    
}

