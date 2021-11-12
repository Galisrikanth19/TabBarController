//
//  tbcon.swift
//  TabBarController
//
//  Created by ELORCE INDUSTRIES PRIVATE LIMITED on 10/11/21.
//

import UIKit

class tbcon: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        updateTabBarAppearance()
    }
    
    @available(iOS 15.0, *)
    private func updateTabBarAppearance() {
        let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        
        //let barTintColor: UIColor = .blue
        let imageNw  = UIImage(imageLiteralResourceName: "navigation_bg_image")
        tabBarAppearance.backgroundColor = UIColor(patternImage: imageNw)
        
        updateTabBarItemAppearance(appearance: tabBarAppearance.compactInlineLayoutAppearance)
        updateTabBarItemAppearance(appearance: tabBarAppearance.inlineLayoutAppearance)
        updateTabBarItemAppearance(appearance: tabBarAppearance.stackedLayoutAppearance)
        
        self.tabBar.standardAppearance = tabBarAppearance
        self.tabBar.scrollEdgeAppearance = tabBarAppearance
    }

    @available(iOS 13.0, *)
    private func updateTabBarItemAppearance(appearance: UITabBarItemAppearance) {
        let tintColor: UIColor = .white
        let unselectedItemTintColor: UIColor = .red
        
        appearance.selected.iconColor = tintColor
        appearance.normal.iconColor = unselectedItemTintColor
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
