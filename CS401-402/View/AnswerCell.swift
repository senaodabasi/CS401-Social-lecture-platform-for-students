//
//  AnswerCell.swift
//  CS401-402
//
//  Created by Adem Tunay Saka on 16/11/2017.
//  Copyright © 2017 atunaysaka. All rights reserved.
//

import UIKit

class AnswerCell: UITableViewCell {
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var answerText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
