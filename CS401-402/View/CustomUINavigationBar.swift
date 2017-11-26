//
//  CustomUINavigationBar.swift
//  CS401-402
//
//  Created by Adem Tunay Saka on 19/11/2017.
//  Copyright © 2017 atunaysaka. All rights reserved.
//

import UIKit

class CustomUINavigationBar: UINavigationBar {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    override func draw(_ rect: CGRect) {
        self.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor(red: 50 / 255, green: 50 / 255, blue: 50 / 255, alpha: 1), NSAttributedStringKey.font : UIFont(name: "Avenir-Heavy", size: 20) as Any]
        self.navigationBar.tintColor = .white
        self.navigationBar.barTintColor = .white
        self.navigationBar.isTranslucent = false
        
        self.view.backgroundColor = .white
    }
}
