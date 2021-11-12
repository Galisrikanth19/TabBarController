//
//  ViewController.swift
//  TabBarController
//
//  Created by ELORCE INDUSTRIES PRIVATE LIMITED on 10/11/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let appearance = UITabBarAppearance()
//        appearance.backgroundColor = .red
//        //tabBar.standardAppearance = appearance
//        self.tabBarController?.tabBar.standardAppearance = appearance
        
        
        self.tabBarController?.tabBar.tintColor = .white
        self.tabBarController?.tabBar.unselectedItemTintColor = .red
        self.tabBarController?.tabBar.isTranslucent = false
        
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.red], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected)
        
    }
}
