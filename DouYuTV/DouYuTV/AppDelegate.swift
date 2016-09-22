//
//  AppDelegate.swift
//  DouYuTV
//
//  Created by 许卓权 on 16/9/21.
//  Copyright © 2016年 许卓权. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        UITabBar.appearance().tintColor = UIColor.orange
        return true
    }

}
