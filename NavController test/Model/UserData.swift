//
//  UserData.swift
//  NavController test
//
//  Created by Mikhail Tedeev on 07.12.2022.
//

import Foundation

class Authorization {
    var userDefaults = UserDefaults.standard
    
    //MARK: - Sign up methods
    
    func setUpUsername(_ username: String) {
        userDefaults.set(username, forKey: usernameKey)
    }
    func setUpPassword(_ password: String) {
        userDefaults.set(password, forKey: passwordKey)
    }
    
    //MARK: - Login methods
    
    func checkUsername(_ username: String?) -> Bool {
        guard userDefaults.string(forKey: usernameKey) == username else { return false }
        return true
    }
    
    func checkPassword(_ password: String?) -> Bool {
        guard userDefaults.string(forKey: passwordKey) == password else { return false }
        return true
    }
    
    //MARK: - Private keys
    
    private let usernameKey = "Username"
    private let passwordKey = "Password"
    
}
