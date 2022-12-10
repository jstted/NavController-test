//
//  SignUpViewController.swift
//  NavController test
//
//  Created by Mikhail Tedeev on 06.12.2022.
//

import UIKit

class SignUpViewController: UIViewController {

    //MARK: - View Elements
    
    let data = Authorization()
    
    var usernameTextField = UITextField()
    var passwordTextField = UITextField()
    var passwordRepeatTextField = UITextField()
    var registerButton = UIButton()
    
    //MARK: - View did load
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = .black
        view.backgroundColor = .white
        usernameAppearance()
        passwordAppearance()
        passwordRepeatAppearance()
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

    }
    
    func passwordRepeatAppearance() {
        view.addSubview(passwordRepeatTextField)
        passwordRepeatTextField.frame = CGRect(x: 85, y: 490, width: 220, height: 40)
        passwordRepeatTextField.placeholder = "Repeat password"
        passwordRepeatTextField.isSecureTextEntry = true
        passwordRepeatTextField.borderStyle = .roundedRect
        passwordRepeatTextField.autocorrectionType = .no
        passwordRepeatTextField.spellCheckingType = .no
        passwordRepeatTextField.autocapitalizationType = .none
        
    }
    
    func registerButtonAppearance() {
        registerButton = UIButton(type: .system)
        view.addSubview(registerButton)
        
        //Title
        registerButton.setTitle("Regiser", for: .normal)
        registerButton.setTitleColor(.white, for: .normal)
        
        //Position
        registerButton.frame = CGRect(x: 135, y: 590, width: 120, height: 40)
        
        //Background
        registerButton.backgroundColor = .black
        registerButton.layer.cornerRadius = .pi
        
        registerButton.addTarget(self, action: #selector(registerButtonAction), for: .touchUpInside)
    }

    
    //MARK: - View Actions
    
    @objc func registerButtonAction() {
        guard (usernameTextField.text?.isEmpty) != nil else { return }
        guard (passwordTextField.text?.isEmpty) != nil else { return }
        guard (passwordRepeatTextField.text?.isEmpty) != nil else { return }
        guard passwordTextField.text == passwordRepeatTextField.text else { return }
        
        data.setUpUsername(usernameTextField.text!)
        data.setUpPassword(passwordTextField.text!)
        
        print(usernameTextField.text!, passwordTextField.text!)
        let doneSignUpViewController = DoneSignUpViewController()
        navigationController?.pushViewController(doneSignUpViewController, animated: true)
        
    }

}


