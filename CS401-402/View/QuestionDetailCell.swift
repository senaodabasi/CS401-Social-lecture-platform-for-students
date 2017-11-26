//
//  QuestionDetailCell.swift
//  CS401-402
//
//  Created by Adem Tunay Saka on 18/11/2017.
//  Copyright © 2017 atunaysaka. All rights reserved.
//

import UIKit

class QuestionDetailCell: UITableViewCell {
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var questionTitle: UILabel!
    @IBOutlet weak var questionText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
