//
//  MyProfileViewController.swift
//  CS401-402
//
//  Created by Adem Tunay Saka on 24/10/2017.
//  Copyright © 2017 atunaysaka. All rights reserved.
//

import UIKit
import Foundation
import Firebase

class MyProfileViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func signOutButtonClicked(_ sender: Any) {
         let alert = UIAlertController(title: "Sign Out", message: "Are you sure?", preferredStyle: UIAlertControllerStyle.alert)
         
         alert.addAction(UIAlertAction(title: "Sign out", style: UIAlertActionStyle.default, handler: { (action) in
            if Auth.auth().currentUser != nil {
                do {
                    try Auth.auth().signOut()
                    
                    print("Signed out")
                    
                    let loginViewController = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
                    self.present(loginViewController, animated: true, completion: nil)
                } catch let error as NSError {
                    print(error.localizedDescription)
                }
            }
         }))
         
         alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: { (action) in
         print("Cancelled Sign out")
         }))
         
         self.present(alert, animated: true, completion: nil)
    }
}
