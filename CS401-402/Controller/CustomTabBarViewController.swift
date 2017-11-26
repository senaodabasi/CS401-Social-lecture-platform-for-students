//
//  CustomTabBarViewController.swift
//  CS401-402
//
//  Created by Adem Tunay Saka on 24/10/2017.
//  Copyright © 2017 atunaysaka. All rights reserved.
//

import UIKit

class CustomTabBarViewController : UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tabBar.tintColor = UIColor(red: 40/255, green: 54/255, blue: 76/255, alpha: 1)
        self.tabBar.barTintColor = .white
        self.tabBar.isTranslucent = false

        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor : UIColor(red: 40/255, green: 54/255, blue: 76/255, alpha: 1)], for: .selected)
        
    }
}
