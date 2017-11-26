//
//  RegisterViewController.swift
//  CS401-402
//
//  Created by Adem Tunay Saka on 23/10/2017.
//  Copyright © 2017 atunaysaka. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class RegisterViewController : UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func registerButtonClicked(_ sender: Any) {
        if(emailTextField.text != "" && passwordTextField.text != "" && confirmPasswordTextField.text != "") {
            if(passwordTextField.text == confirmPasswordTextField.text) {
                Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!, completion: { user, error in
                    if(error == nil) {
                        print("Authorized.")
                    } else {
                        let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertControllerStyle.alert)
                        
                        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: { (action) in
                            print("Ok")
                        }))
                        
                        self.present(alert, animated: true, completion: nil)
                    }
                })
            } else {
                let alert = UIAlertController(title: "Error", message: "Password don't match", preferredStyle: UIAlertControllerStyle.alert)
                
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: { (action) in
                    print("Ok")
                }))
                
                self.present(alert, animated: true, completion: nil)
            }
        } else {
            let alert = UIAlertController(title: "Error", message: "Missing necessary information", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: { (action) in
                print("Ok")
            }))
            
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func loginButtonClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
