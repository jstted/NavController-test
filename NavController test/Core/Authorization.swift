//
//  Authorization.swift
//  NavController test
//
//  Created by Mikhail Tedeev on 07.12.2022.
//

import Foundation

class Authorization {
    var userDefaults = UserDefaults.standard
    
    //MARK: - Sign up methods
    
    func setUpUsername(_ username: String) {
        userDefaults.set(username, forKey: Constants.UserDefaultsKeys.usernameKey)
    }
    func setUpPassword(_ password: String) {
        userDefaults.set(password, forKey: Constants.UserDefaultsKeys.passwordKey)
    }
    
    //MARK: - Login methods
    
    func checkUsername(_ username: String?) -> Bool {
        guard userDefaults.string(forKey: Constants.UserDefaultsKeys.usernameKey) == username else { return false }
        return true
    }
    
    func checkPassword(_ password: String?) -> Bool {
        guard userDefaults.string(forKey: Constants.UserDefaultsKeys.passwordKey) == password else { return false }
        return true
    }
    
    
    func authenticatedUser() {
        
    }
    
    
}
