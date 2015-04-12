//
//  CustomCell.swift
//  CustomCell
//
//  Created by Jahan Cherian on 4/4/15.
//  Copyright (c) 2015 Jahan Cherian. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var foodTitle: UILabel!
    @IBOutlet weak var foodType: UILabel!
    @IBOutlet weak var numSwipes: UILabel!
    @IBOutlet weak var foodState: UILabel!
    
    //var foodTitleContent: String?
    
//    init (style: UITableViewCellStyle, reuseIdentifier: String)
//    {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//    }
//
//    required init(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setCell(titleText: String, servingTimeText: String, foodTypeText:String, numSwipesInt: String, foodStateText: String)
    {
        self.foodTitle.text = titleText
        self.foodType.text = foodTypeText
        self.numSwipes.text = numSwipesInt
        self.foodState.text = foodStateText
        
    }
}
