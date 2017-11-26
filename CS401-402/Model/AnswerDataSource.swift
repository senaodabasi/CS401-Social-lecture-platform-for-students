//
//  AnswerDataSource.swift
//  CS401-402
//
//  Created by Adem Tunay Saka on 16/11/2017.
//  Copyright © 2017 atunaysaka. All rights reserved.
//

import Foundation

class AnswerDataSource : NSObject {
    var answerArray : [Answer] = []
    
    override init () {
        super.init()
        
        let answer1 = Answer(answerText: "The answer to the question posted by some-user will be represented here. The answer to the question posted by some-user will be represented here. The answer to the question posted by some-user will be represented here. The answer to the question posted by some-user will be represented here. ", username: "some-user")
        let answer2 = Answer(answerText: "This is the answer of another-user This is the answer of another-user This is the answer of another-user This is the answer of another-user This is the answer of another-user This is the answer of another-user This is the answer of another-user This is the answer of another-user This is the answer of another-user This is the answer of another-user This is the answer of another-user This is the answer of another-user", username: "another user")
        let answer3 = Answer(answerText: "Lorem ipsum dolor sit amet", username: "a user")
        let answer4 = Answer(answerText: "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...", username: "anonymous user")
        
        answerArray.append(answer1)
        answerArray.append(answer2)
        answerArray.append(answer3)
        answerArray.append(answer4)
    }
}
