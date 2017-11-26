//
//  CustomNavigationViewController.swift
//  CS401-402
//
//  Created by Adem Tunay Saka on 24/10/2017.
//  Copyright © 2017 atunaysaka. All rights reserved.
//

import UIKit

class CustomNavigationViewController : UINavigationController {    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor(red: 50 / 255, green: 50 / 255, blue: 50 / 255, alpha: 1), NSAttributedStringKey.font : UIFont(name: "Avenir-Heavy", size: 20) as Any]
        self.navigationBar.tintColor = .white
        self.navigationBar.barTintColor = .white
        self.navigationBar.isTranslucent = false
        
        self.view.backgroundColor = .white
    }
}
