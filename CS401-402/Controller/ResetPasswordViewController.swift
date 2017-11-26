//
//  ResetPasswordViewController.swift
//  CS401-402
//
//  Created by Adem Tunay Saka on 23/10/2017.
//  Copyright © 2017 atunaysaka. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class ResetPasswordViewController : UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func resetPasswordButtonClicked(_ sender: Any) {
        if(emailTextField.text != "") {
            Auth.auth().sendPasswordReset(withEmail: emailTextField.text!, completion: { error in
                if(error == nil) {
                    let alert = UIAlertController(title: "Successful", message: "Password reset email sent.", preferredStyle: UIAlertControllerStyle.alert)
                    
                    alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: { (action) in
                        print("Ok")
                    }))
                    
                    self.present(alert, animated: true, completion: nil)
                } else {
                    let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertControllerStyle.alert)
                    
                    alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: { (action) in
                        print("Ok")
                    }))
                    
                    self.present(alert, animated: true, completion: nil)
                }
            })
        } else {
            let alert = UIAlertController(title: "Error", message: "Missing necessary information", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: { (action) in
                print("Ok")
            }))
            
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func backToLoginButtonClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
