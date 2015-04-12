//
//  SidesViewController.swift
//  CustomCell
//
//  Created by Jahan Cherian on 4/4/15.
//  Copyright (c) 2015 Jahan Cherian. All rights reserved.
//

import UIKit

class SidesViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    var arrayOfPastries: [Food] = [Food]()
    @IBOutlet weak var myTableView: UITableView!
    
    func setUpSides()
    {   var food48 = Food(title: "Asian Quinoa Salad ", servingTime: "LUNCH AND DINNER", foodType: "Sides", numSwipes: "Available with Order", foodState: "Cold")
        var food49 = Food(title: "California Pasta Salad ", servingTime: "LUNCH AND DINNER", foodType: "Sides", numSwipes: "Available with Order", foodState: "Cold")
        var food50 = Food(title: "Cranberry Relish ", servingTime: "LUNCH AND DINNER", foodType: "Sides", numSwipes: "Available with Order", foodState: "Cold")
        var food51 = Food(title: "Israeli Cous Cous Salad ", servingTime: "LUNCH AND DINNER", foodType: "Sides", numSwipes: "Available with Order", foodState: "Cold")
        var food52 = Food(title: "Mediterranean Chopped Salad ", servingTime: "LUNCH AND DINNER", foodType: "Sides", numSwipes: "Available with Order", foodState: "Cold")
        var food53 = Food(title: "Seasame & Orange Noodle Salad ", servingTime: "LUNCH AND DINNER", foodType: "Sides", numSwipes: "Available with Order", foodState: "Cold")
        var food54 = Food(title: "Fresh Fruit Cup ", servingTime: "ALL DAY", foodType: "Sides & Sweets", numSwipes: "1", foodState: "Cold")
        var food55 = Food(title: "Yogurt Parfait Cup ", servingTime: "ALL DAY", foodType: "Sides & Sweets", numSwipes: "1", foodState: "Cold")
        var food56 = Food(title: "Banana ", servingTime: "ALL DAY", foodType: "Sides & Sweets", numSwipes: "Available wiht Order", foodState: "Cold")
        var food57 = Food(title: "Apple ", servingTime: "ALL DAY", foodType: "Sides & Sweets", numSwipes: "Available with Order", foodState: "Cold")
        var food58 = Food(title: "Orange", servingTime: "ALL DAY", foodType: "Sides & Sweets", numSwipes: "Available with Order", foodState: "Cold")
        var food59 = Food(title: "Boulder Canyon Totally Natural Kettle Chips ", servingTime: "ALL DAY", foodType: "Sides & Sweets", numSwipes: "Available with Order", foodState: "Cold")
        var food60 = Food(title: " SunChips ", servingTime: "ALL DAY", foodType: "Sides & Sweets", numSwipes: "Available with Order", foodState: "Cold")
        var food61 = Food(title: "Poore Brothers Jalapeno Kettle Chips ", servingTime: "ALL DAY", foodType: "Sides & Sweets", numSwipes: "Available with Order", foodState: "Cold")
        
        var food79 = Food(title: "Apple Turnover ", servingTime: "ALL DAY", foodType: "Pastry", numSwipes: ".5", foodState: "Cold")
        var food80 = Food(title: "Assorted Bagels ", servingTime: "ALL DAY", foodType: "Pastry", numSwipes: ".5", foodState: "Cold")
        var food81 = Food(title: "Assorted Muffins ", servingTime: "ALL DAY", foodType: "Pastry", numSwipes: ".5", foodState: "Cold")
        var food82 = Food(title: "Assorted Scones ", servingTime: "ALL DAY", foodType: "Pastry", numSwipes: ".5", foodState: "Cold")
        var food83 = Food(title: "Assorted Cupcakes ", servingTime: "ALL DAY", foodType: "Pastry", numSwipes: ".5", foodState: "Cold")
        var food84 = Food(title: "Assorted Croissants ", servingTime: "ALL DAY", foodType: "Pastry", numSwipes: ".5", foodState: "Cold")
        var food85 = Food(title: "Assorted Turnovers ", servingTime: "ALL DAY", foodType: "Pastry", numSwipes: ".5", foodState: "Cold")
        var food86 = Food(title: "Assorted Cookies ", servingTime: "ALL DAY", foodType: "Pastry", numSwipes: ".5", foodState: "Cold")
        var food87 = Food(title: "Cinnamon Roll ", servingTime: "ALL DAY", foodType: "Pastry", numSwipes: ".5", foodState: "Cold")
        var food88 = Food(title: "Cirtrus Teacake ", servingTime: "ALL DAY", foodType: "Pastry", numSwipes: ".5", foodState: "Cold")
        var food89 = Food(title: "Grandma's Banana Bread ", servingTime: "ALL DAY", foodType: "Pastry", numSwipes: ".5", foodState: "Cold")
        var food90 = Food(title: "Marble Loaf Cake ", servingTime: "ALL DAY", foodType: "Pastry", numSwipes: ".5", foodState: "Cold")
        var food91 = Food(title: "Palmier/Crispy", servingTime: "ALL DAY", foodType: "Pastry", numSwipes: ".5", foodState: "Cold")
        var food92 = Food(title: "Raspberry Danish ", servingTime: "ALL DAY", foodType: "Pastry", numSwipes: ".5", foodState: "Cold")
        var food93 = Food(title: "Wolferman English Muffin ", servingTime: "ALL DAY", foodType: "Pastry", numSwipes: ".5", foodState: "Cold")
        var food94 = Food(title: "World's Best Coffee Cake ", servingTime: "ALL DAY", foodType: "Pastry", numSwipes: ".5", foodState: "Cold")
        
        arrayOfPastries.append(food48)
        arrayOfPastries.append(food49)
        arrayOfPastries.append(food50)
        arrayOfPastries.append(food51)
        arrayOfPastries.append(food52)
        arrayOfPastries.append(food53)
        arrayOfPastries.append(food54)
        arrayOfPastries.append(food55)
        arrayOfPastries.append(food56)
        arrayOfPastries.append(food57)
        arrayOfPastries.append(food58)
        arrayOfPastries.append(food59)
        arrayOfPastries.append(food60)
        arrayOfPastries.append(food61)
        arrayOfPastries.append(food79)
        arrayOfPastries.append(food80)
        arrayOfPastries.append(food81)
        arrayOfPastries.append(food82)
        arrayOfPastries.append(food83)
        arrayOfPastries.append(food84)
        arrayOfPastries.append(food85)
        arrayOfPastries.append(food86)
        arrayOfPastries.append(food87)
        arrayOfPastries.append(food88)
        arrayOfPastries.append(food89)
        arrayOfPastries.append(food90)
        arrayOfPastries.append(food91)
        arrayOfPastries.append(food92)
        arrayOfPastries.append(food93)
        arrayOfPastries.append(food94)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpSides()
        self.title = "Sides & Pastries Menu"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfPastries.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell: CustomCell = self.myTableView.dequeueReusableCellWithIdentifier("myCustomCell2", forIndexPath: indexPath) as CustomCell
        let food = arrayOfPastries[indexPath.row]
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
