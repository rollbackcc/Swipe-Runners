//
//  TableViewCell.swift
//  Yik Yak Attempt 2
//
//  Created by Kristen Chui on 4/4/15.
//  Copyright (c) 2015 Kristen Chui. All rights reserved.
//

import UIKit
import Parse

class TableViewCell: PFTableViewCell {

    
    @IBOutlet weak var yakText: UITextView!
    @IBOutlet weak var time: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
