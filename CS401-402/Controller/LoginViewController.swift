//
//  ViewController.swift
//  CS401-402
//
//  Created by Adem Tunay Saka on 22/10/2017.
//  Copyright © 2017 atunaysaka. All rights reserved.
//

import UIKit
import Firebase
// import FBSDKLoginKit

class LoginViewController : UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonClicked(_ sender: Any) {
        if(emailTextField.text != "" && passwordTextField.text != "") {
            Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!, completion: { user, error in
                if(error == nil) {
                    print("You have successfully logged in")
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
}

