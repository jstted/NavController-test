//
//  UserData.swift
//  NavController test
//
//  Created by Mikhail Tedeev on 07.12.2022.
//

import Foundation

class Data {
    var userDefaults = UserDefaults.standard
    
    func setUpUsername(_ username: String) {
        userDefaults.set(username, forKey: usernameKey)
    }
    func setUpPassword(_ password: String) {
        userDefaults.set(password, forKey: usernameKey)
    }
    
    //MARK: - Private keys
    
    private let usernameKey = "UsernameKey"
    private let passwordKey = "PasswordKey"
    
}
