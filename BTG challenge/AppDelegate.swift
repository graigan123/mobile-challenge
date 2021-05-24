//
//  AppDelegate.swift
//  BTG challenge
//
//  Created by Diego Azevedo Vasconcelos on 22/05/21.
//  Copyright © 2020 Diego Azevedo Vasconcelos. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    class var isIphoneSE: Bool {
        // 568.0 on iPhone SE.
        return UIScreen.main.bounds.height == 568.0
    }
    
    static var navigationController: BGTNavigationController? = nil

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let mainVC = FirstScreenViewController()
        let navigationController = BGTNavigationController(rootViewController: mainVC)
        navigationController.setViewControllers([mainVC], animated: true)
        
        AppDelegate.navigationController = navigationController
        
        self.window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

