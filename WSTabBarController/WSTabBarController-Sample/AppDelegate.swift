//
//  AppDelegate.swift
//  WSTabBarController-Sample
//
//  Created by chisj on 16/4/27.
//  Copyright © 2016年 WS. All rights reserved.
//

import UIKit
import WSTabBarController

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var maintabbarController : WSTabBarController?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window!.backgroundColor = UIColor.white
        window!.makeKeyAndVisible()
        
        maintabbarController = WSTabBarController(publishButtonConfig: {b in
            b.setImage(UIImage(named: "post_normal"), for: .normal)
            b.setImage(UIImage(named: "post_normal"), for: .highlighted)
            b.frame = CGRect(x:0, y:0, width:64, height:77)
            b.setTitle("publish", for: .normal)
            b.contentVerticalAlignment = .top
            b.titleEdgeInsets = UIEdgeInsets(top: 60, left: -64, bottom: 0 , right: 0)
            b.titleLabel?.font = UIFont.systemFont(ofSize: 11)
            
            b.setTitleColor(UIColor.black, for: .normal)
            b.setTitleColor(UIColor.black, for: .highlighted)
            }, publishButtonClick: { p in
                let alert = UIAlertView(title: nil, message: "Publish", delegate: nil, cancelButtonTitle: "OK")
                alert.show()
        })
        maintabbarController?.tabBar.isTranslucent = false;
        maintabbarController?.tabBar.tintColor =  UIColor.orange
        maintabbarController?.viewControllers = [controller(title: "tab1", icon: "tabbar_main"),
                                                 controller(title: "tab2", icon: "tabbar_main"),
                                                 controller(title: "tab3", icon: "tabbar_mine"),
                                                 controller(title: "tab4", icon: "tabbar_mine")
        ]
        window!.rootViewController = maintabbarController
        
        return true
    }
    
    func controller(title: String, icon: String) -> UINavigationController {
        let c = UIViewController()
        c.title = title
        let controller = UINavigationController(rootViewController:c)
        controller.tabBarItem.title = title
        controller.tabBarItem.image = UIImage(named: icon)
        return controller
    }
    
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}

