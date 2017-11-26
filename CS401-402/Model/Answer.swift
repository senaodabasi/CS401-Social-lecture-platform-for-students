//
//  Answer.swift
//  CS401-402
//
//  Created by Adem Tunay Saka on 16/11/2017.
//  Copyright © 2017 atunaysaka. All rights reserved.
//

import Foundation

class Answer : NSObject {
    let answerText : String
    let username : String
    
    init(answerText : String) {
        self.answerText = answerText
        self.username = "~unknown user"
    }
    
    init(answerText : String, username : String) {
        self.answerText = answerText
        self.username = username
    }
}
