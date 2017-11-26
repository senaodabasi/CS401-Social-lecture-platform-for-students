//
//  AskQuestionViewController.swift
//  CS401-402
//
//  Created by Adem Tunay Saka on 13/11/2017.
//  Copyright © 2017 atunaysaka. All rights reserved.
//

import Foundation
import UIKit

class AskQuestionViewController : UIViewController, UITextViewDelegate {
    @IBOutlet weak var facultyName: UITextField!
    @IBOutlet weak var courseName: UITextField!
    @IBOutlet weak var questionTitle: UITextField!
    @IBOutlet weak var questionTextField: UITextView!
    
    let _postDataSource = PostDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionTextField.delegate = self
        questionTextField.text = "Your question here..."
        questionTextField.textColor = UIColor.lightGray
        
        let borderColor = UIColor(red: 235 / 255, green: 235 / 255, blue: 235 / 255, alpha: 1)
        questionTextField.layer.borderColor = borderColor.cgColor
        questionTextField.layer.borderWidth = 1.0
        questionTextField.layer.cornerRadius = 5.0
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = "Your question here..."
            textView.textColor = UIColor.lightGray
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func askButtonClicked(_ sender: Any) {
        /*
        if(facultyName.text != "" && courseName.text != "" && questionTitle.text != "" && questionTextField.text != "") {
            performSegue(withIdentifier: "questionInformationSegue", sender: self)
        }
        */
    }
    
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let post = Post(courseName: courseName.text!,
                        questionTitle: questionTitle.text!,
                        questionText: questionTextField.text!,
                        username: "unknown user")
        
        let viewController = segue.destination as! FeedViewController
        
        viewController.postDataSource.postArray.append(post)
    }
    */
}

// Gun Hoca oneriler::
// let controllerARray! = self.navigationController?.viewControllers
// let previousController = controllerARray[controllerARray.count - 2]
