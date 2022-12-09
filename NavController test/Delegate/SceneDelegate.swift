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

        let logInViewController = LogInViewController()
        self.navigationController = UINavigationController(rootViewController: logInViewController)
        
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()

    }

}

