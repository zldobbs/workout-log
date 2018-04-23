//
//  WorkoutLogTableViewCell.swift
//  workout-log
//
//  Created by Zachary Dobbs on 4/22/18.
//  Copyright © 2018 Zachary Dobbs. All rights reserved.
//

import UIKit

class WorkoutLogTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
