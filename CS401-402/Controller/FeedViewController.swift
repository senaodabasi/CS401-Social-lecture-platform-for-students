//
//  FeedViewController.swift
//  CS401-402
//
//  Created by Adem Tunay Saka on 12/11/2017.
//  Copyright © 2017 atunaysaka. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class FeedViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var postDataSource = PostDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postDataSource.postArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell") as! PostCell
        
        let post = postDataSource.postArray[indexPath.row]
        
        cell.courseName.text = post.courseName
        cell.questionTitle.text = post.questionTitle
        cell.questionText.text = post.questionText
        cell.username.text = "~ \(post.username)" 
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 215
    }
}
