//
//  Food.swift
//  CustomCell
//
//  Created by Jahan Cherian on 4/4/15.
//  Copyright (c) 2015 Jahan Cherian. All rights reserved.
//

import Foundation

class Food
{
    var title = "title"
    var servingTime = "00:00"
    var foodType = "foodtype"
    var numSwipes = "0"
    var foodState = "N/A"
    
    init(title:String, servingTime:String, foodType:String, numSwipes:String, foodState:String)
    {
        self.title = title
        self.servingTime = servingTime
        self.foodType = foodType
        self.numSwipes = numSwipes
        self.foodState = foodState
    }
    
}