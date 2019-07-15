//
//  AppDelegate.swift
//  UIProgrammatically
//
//  Created by Anilkumar on 28/05/19.
//  Copyright © 2019 Anilkumar. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        navigateToHomeScreen()
        return true
    }
    
    func navigateToHomeScreen(){
        window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = CustomController()
        print(UIScreen.main.bounds.width)
        print(UIScreen.main.bounds.height)
        window?.rootViewController = UINavigationController(rootViewController: viewController)
        window?.makeKeyAndVisible()
        
        
        
    }
    
    func applicationWillResignActive(_ application: UIApplication) {}
    
    func applicationDidEnterBackground(_ application: UIApplication) {}
    
    func applicationWillEnterForeground(_ application: UIApplication) {}
    
    func applicationDidBecomeActive(_ application: UIApplication) {}
    
    func applicationWillTerminate(_ application: UIApplication) {}


}

