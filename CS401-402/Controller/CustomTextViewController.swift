//
//  CustomTextViewController.swift
//  CS401-402
//
//  Created by Adem Tunay Saka on 13/11/2017.
//  Copyright © 2017 atunaysaka. All rights reserved.
//

import Foundation
import UIKit

class CustomTextViewController : UITextView {
    func textViewDidBeginEditing(textView: UITextView) {
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    func textViewDidEndEditing(textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = "Your question here..."
            textView.textColor = UIColor.lightGray
        }
    }
}
