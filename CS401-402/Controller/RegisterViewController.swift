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
    var refUsers : DatabaseReference!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        refUsers = Database.database().reference().child("users")
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
                        
                        self.addUser()
                        
                        print("Added to database")
                        
                        let loginViewController = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
                        self.present(loginViewController, animated: true, completion: nil)
                    } else {
                        let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertControllerStyle.alert)
                        
                        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: { (action) in
                            print("Ok")
                        }))
                        
                        self.present(alert, animated: true, completion: nil)
                    }
                })
            } else {
                let alert = UIAlertController(title: "Error", message: "Passwords don't match", preferredStyle: UIAlertControllerStyle.alert)
                
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
    
    func addUser() {
        let key = refUsers.childByAutoId().key
        
        let user = ["id" : key,
                    "userEmail" : emailTextField.text! as String,
                    "userPassword" : passwordTextField.text! as String]
        
        refUsers.child(key).setValue(user)
    }
}
