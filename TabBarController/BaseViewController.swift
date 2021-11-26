//
//  BaseViewController.swift
//  TabBarController
//
//  Created by ELORCE INDUSTRIES PRIVATE LIMITED on 10/11/21.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBarAppearance()
    }
    
    private func setTabBarAppearance() {
        let bgImg = UIImage(named: "navigation_bg_image")
        
        if #available(iOS 15.0, *) {
            let appearance = UITabBarAppearance()
            appearance.configureWithDefaultBackground()
            
            appearance.backgroundColor = UIColor(patternImage: bgImg!)
            appearance.compactInlineLayoutAppearance.normal.iconColor = .white
            appearance.compactInlineLayoutAppearance.normal.titleTextAttributes = [.foregroundColor : UIColor.white]
            
            appearance.inlineLayoutAppearance.normal.iconColor = .white
            appearance.inlineLayoutAppearance.normal.titleTextAttributes = [.foregroundColor : UIColor.white]
            
            appearance.stackedLayoutAppearance.normal.iconColor = .white
            appearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor : UIColor.white]
            
            self.tabBarController?.tabBar.standardAppearance = appearance
            self.tabBarController?.tabBar.scrollEdgeAppearance = self.tabBarController?.tabBar.standardAppearance
            self.tabBarController?.tabBar.tintColor = .green
        } else {
            self.tabBarController?.tabBar.barTintColor =  UIColor(patternImage: bgImg!)
            self.tabBarController?.tabBar.unselectedItemTintColor = .white
            self.tabBarController?.tabBar.tintColor = .green
        }
    }
    
}
