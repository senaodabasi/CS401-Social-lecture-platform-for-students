//
//  QuestionDetailViewController.swift
//  CS401-402
//
//  Created by Adem Tunay Saka on 16/11/2017.
//  Copyright © 2017 atunaysaka. All rights reserved.
//

import UIKit
import Foundation

class QuestionDetailViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var answerDataSource = AnswerDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.estimatedRowHeight = 175
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return answerDataSource.answerArray.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.section == 0) {
            let questionCell = tableView.dequeueReusableCell(withIdentifier: "QuestionDetailCell") as! QuestionDetailCell
            
            return questionCell
        } else {
            let answerCell = tableView.dequeueReusableCell(withIdentifier: "AnswerCell") as! AnswerCell
            
            let answer = answerDataSource.answerArray[indexPath.row]
            
            answerCell.answerText.text = answer.answerText
            answerCell.username.text = "~ \(answer.username)"
            
            answerCell.answerText.numberOfLines = 0
            
            return answerCell
        }
    }
}
