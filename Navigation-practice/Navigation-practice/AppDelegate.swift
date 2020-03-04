//
//  AppDelegate.swift
//  Navigation-practice
//
//  Created by Alex Mosunov on 3/4/20.
//  Copyright © 2020 Alex Mosunov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        UITabBar.appearance().barTintColor = .black
        UITabBar.appearance().tintColor = .systemRed
        return true
    }



}

