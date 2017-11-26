//
//  Post.swift
//  CS401-402
//
//  Created by Adem Tunay Saka on 14/11/2017.
//  Copyright © 2017 atunaysaka. All rights reserved.
//

import Foundation

class Post : NSObject {
    let courseName : String
    let questionTitle : String
    let questionText : String
    let username : String
    
    init(courseName : String, questionTitle : String, questionText : String, username : String) {
        self.courseName = courseName
        self.questionTitle = questionTitle
        self.questionText = questionText
        self.username = username
    }
}
