//
//  AppDelegate.swift
//  PersonalORK
//
//  Created by Xu Li on 2021/1/9.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let navigationController = UINavigationController.init()
        let vc = POKRMainViewController.init()
        navigationController.viewControllers = NSArray.init(object: vc) as! [UIViewController]
        window = UIWindow.init(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return true
    }
}

