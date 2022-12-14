//
//  SceneDelegate.swift
//  NavController test
//
//  Created by Mikhail Tedeev on 04.12.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    var navigationController = UINavigationController()
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
                
        guard let windowScene = (scene as? UIWindowScene) else { return }

        window = UIWindow(windowScene: windowScene)
        switcher()
        
    }
    
    func switcher() {
        let status = UserDefaults.standard.bool(forKey: Constants.UserDefaultsKeys.isLogin)

        
        print(status)
        
        if (status == true) {
            
            let homeViewContrloller = HomeViewController()
            
            window?.rootViewController = homeViewContrloller
            window?.makeKeyAndVisible()
            
        } else {
            
            let logInViewController = LogInViewController()
            navigationController = UINavigationController(rootViewController: logInViewController)
            
            window?.rootViewController = navigationController
            window?.makeKeyAndVisible()
            
        }

    }

}

