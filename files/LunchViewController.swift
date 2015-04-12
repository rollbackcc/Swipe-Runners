//
//  LunchViewController.swift
//  CustomCell
//
//  Created by Jahan Cherian on 4/4/15.
//  Copyright (c) 2015 Jahan Cherian. All rights reserved.
//

import UIKit

class LunchViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    var arrayOfLunch: [Food] = [Food]()
    
    @IBOutlet weak var myTableView: UITableView!
    
    func setUpLunch()
    {
        var food8 = Food(title: "BBQ Beef Brisket", servingTime: "LUNCH AND DINNER", foodType: "Classic Sandwich", numSwipes: "1", foodState: "Toasted")
        var food9 = Food(title: "Ham & Swiss", servingTime: "LUNCH AND DINNER", foodType: "Classic Sandwich", numSwipes: "1", foodState: "Toasted/Cold")
        var food10 = Food(title: "Roast Beef & Cheddar", servingTime: "LUNCH AND DINNER", foodType: "Classic Sandwich", numSwipes: "1", foodState: "Toasted/Cold")
        var food11 = Food(title: "Roasted Turkey & Provolone", servingTime: "LUNCH AND DINNER", foodType: "Classic Sandwich", numSwipes: "1", foodState: "Toasted/Cold")
        var food12 = Food(title: "Tuna", servingTime: "LUNCH AND DINNER", foodType: "Classic Sandwich", numSwipes: "1", foodState: "Cold")
        var food13 = Food(title: "Vegan BBQ", servingTime: "LUNCH AND DINNER", foodType: "Premium Sandwich", numSwipes: "1", foodState: "Toasted")
        var food14 = Food(title: "Chicken Ranch & Swiss", servingTime: "LUNCH AND DINNER", foodType: "Premium Sandwich", numSwipes: "1", foodState: "Toasted")
        var food15 = Food(title: "Chipotle BBQ Turkey", servingTime: "LUNCH AND DINNER", foodType: "Premium Sandwich", numSwipes: "1", foodState: "Toasted")
        var food16 = Food(title: "Cuban Ham", servingTime: "LUNCH AND DINNER", foodType: "Premium Sandwich", numSwipes: "1", foodState: "Toasted")
        var food17 = Food(title: "Honey Mustard Chicken Bacon", servingTime: "LUNCH AND DINNER", foodType: "Premium Sandwich", numSwipes: "2", foodState: "Toasted")
        var food18 = Food(title: "Pastrami & Cheese", servingTime: "LUNCH AND DINNER", foodType: "Premium Sandwich", numSwipes: "2", foodState: "Toasted")
        var food19 = Food(title: "Chunky Chicken Salad", servingTime: "LUNCH AND DINNER", foodType: "Premium Sandwich", numSwipes: "1", foodState: "Cold")
        var food20 = Food(title: "Roasted Vegetable & Hummus", servingTime: "LUNCH AND DINNER", foodType: "Premium Sandwich", numSwipes: "1", foodState: "Cold")
        var food21 = Food(title: "The Greek Vegetable", servingTime: "LUNCH AND DINNER", foodType: "Premium Sandwich", numSwipes: "1", foodState: "Cold")
        var food22 = Food(title: "California Turkey Club", servingTime: "LUNCH AND DINNER", foodType: "Premium Sandwich", numSwipes: "2", foodState: "Cold")
        var food23 = Food(title: "Hawaiin Ham", servingTime: "LUNCH AND DINNER", foodType: "Premium Sandwich", numSwipes: "2", foodState: "Cold")
        var food24 = Food(title: "Grilled Steak", servingTime: "LUNCH AND DINNER", foodType: "Kosher Sandwich", numSwipes: "2", foodState: "Hot")
        var food25 = Food(title: "Grilled Wild Salmon", servingTime: "LUNCH AND DINNER", foodType: "Kosher Sandwich", numSwipes: "2", foodState: "Hot")
        var food26 = Food(title: "Italian Minestrone", servingTime: "LUNCH AND DINNER - All day", foodType: "Entrée Soups", numSwipes: "1", foodState: "Hot Soup & Bread Bowl")
        var food27 = Food(title: "New England Clam Chowder", servingTime: "LUNCH AND DINNER - All day", foodType: "Entrée Soups", numSwipes: "1", foodState: "Hot Soup & Bread Bowl")
        var food28 = Food(title: "Beef Noodle Soup", servingTime: "LUNCH AND DINNER - SUNDAYS", foodType: "Entrée Soups", numSwipes: "1", foodState: "Hot Soup & Bread Bowl")
        var food29 = Food(title: "Cream of Tomato", servingTime: "LUNCH AND DINNER - MONDAYS", foodType: "Entrée Soups", numSwipes: "1", foodState: "Hot Soup & Bread Bowl")
        var food30 = Food(title: "Cream of Carrot & Dill", servingTime: "LUNCH AND DINNER - TUESDAYS", foodType: "Entrée Soups", numSwipes: "1", foodState: "Hot Soup & Bread Bowl")
        var food31 = Food(title: "Ground Beef Chilli", servingTime: "LUNCH AND DINNER - WEDNESDAYS", foodType: "Entrée Soups", numSwipes: "1", foodState: "Hot Soup & Bread Bowl")
        var food32 = Food(title: "Chicken Noodle", servingTime: "LUNCH AND DINNER - THURSDAYS", foodType: "Entrée Soups", numSwipes: "1", foodState: "Hot Soup & Bread Bowl")
        var food33 = Food(title: "Shrimp & Corn Chowder", servingTime: "LUNCH AND DINNER - FRIDAYS", foodType: "Entrée Soups", numSwipes: "1", foodState: "Hot Soup & Bread Bowl")
        var food34 = Food(title: "Vegan Chilli", servingTime: "LUNCH AND DINNER - SATURDAYS", foodType: "Entrée Soups", numSwipes: "1", foodState: "Hot Soup & Bread Bowl")
        var food35 = Food(title: "Chicken Caesar Wrap", servingTime: "LUNCH AND DINNER", foodType: "On The Go Wraps", numSwipes: "1", foodState: "Cold")
        var food36 = Food(title: "BBQ Chicken", servingTime: "LUNCH AND DINNER", foodType: "On The Go Specialty Wraps", numSwipes: "1", foodState: "Cold")
        var food37 = Food(title: "Chicken Caesar", servingTime: "LUNCH AND DINNER", foodType: "On The Go Specialty Wraps", numSwipes: "1", foodState: "Cold")
        var food38 = Food(title: "Southwest Black Bean & Corn", servingTime: "LUNCH AND DINNER", foodType: "On The Go Specialty Wraps", numSwipes: "1", foodState: "Cold")
        var food39 = Food(title: "Southwest Chicken", servingTime: "LUNCH AND DINNER", foodType: "On The Go Specialty Wraps", numSwipes: "1", foodState: "Cold")
        var food40 = Food(title: "Caesar Salad", servingTime: "LUNCH AND DINNER", foodType: "On The Go Salads & More", numSwipes: "1", foodState: "Cold")
        var food41 = Food(title: "Chicken & Bacon Gorgonzola Salad", servingTime: "LUNCH AND DINNER", foodType: "On The Go Salads & More", numSwipes: "1", foodState: "Cold")
        var food42 = Food(title: "Chicken Caesar Salad", servingTime: "LUNCH AND DINNER", foodType: "On The Go Salads & More", numSwipes: "1", foodState: "Cold")
        var food43 = Food(title: "Chinese Chicken Salad", servingTime: "LUNCH AND DINNER", foodType: "On The Go Salads & More", numSwipes: "1", foodState: "Cold")
        var food44 = Food(title: "Chinese Wonton Salad", servingTime: "LUNCH AND DINNER", foodType: "On The Go Salads & More", numSwipes: "1", foodState: "Cold")
        var food45 = Food(title: "Meditarranean Nachos", servingTime: "LUNCH AND DINNER", foodType: "On The Go Salads & More", numSwipes: "1", foodState: "Hot")
        var food46 = Food(title: "Mixed Field Greens with Apples & Berries", servingTime: "LUNCH AND DINNER", foodType: "On The Go Salads & More", numSwipes: "1", foodState: "Cold")
        var food47 = Food(title: "Tuna Salad ", servingTime: "LUNCH AND DINNER", foodType: "On The Go Salads & More", numSwipes: "1", foodState: "Hot")
        
        
        arrayOfLunch.append(food8)
        arrayOfLunch.append(food9)
        arrayOfLunch.append(food10)
        arrayOfLunch.append(food11)
        arrayOfLunch.append(food12)
        arrayOfLunch.append(food13)
        arrayOfLunch.append(food14)
        arrayOfLunch.append(food15)
        arrayOfLunch.append(food16)
        arrayOfLunch.append(food17)
        arrayOfLunch.append(food18)
        arrayOfLunch.append(food19)
        arrayOfLunch.append(food20)
        arrayOfLunch.append(food21)
        arrayOfLunch.append(food22)
        arrayOfLunch.append(food23)
        arrayOfLunch.append(food24)
        arrayOfLunch.append(food25)
        arrayOfLunch.append(food26)
        arrayOfLunch.append(food27)
        arrayOfLunch.append(food28)
        arrayOfLunch.append(food29)
        arrayOfLunch.append(food30)
        arrayOfLunch.append(food31)
        arrayOfLunch.append(food32)
        arrayOfLunch.append(food33)
        arrayOfLunch.append(food34)
        arrayOfLunch.append(food35)
        arrayOfLunch.append(food36)
        arrayOfLunch.append(food37)
        arrayOfLunch.append(food38)
        arrayOfLunch.append(food39)
        arrayOfLunch.append(food40)
        arrayOfLunch.append(food41)
        arrayOfLunch.append(food42)
        arrayOfLunch.append(food43)
        arrayOfLunch.append(food44)
        arrayOfLunch.append(food45)
        arrayOfLunch.append(food46)
        arrayOfLunch.append(food47)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpLunch()
        self.title = "Lunch & Dinner Menu"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfLunch.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell: CustomCell = self.myTableView.dequeueReusableCellWithIdentifier("myCustomCell2", forIndexPath: indexPath) as CustomCell
        let food = arrayOfLunch[indexPath.row]
        cell.setCell(food.title, servingTimeText: food.servingTime, foodTypeText: food.foodType, numSwipesInt: food.numSwipes, foodStateText: food.foodState)
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
