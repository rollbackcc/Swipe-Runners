//
//  BreakfastViewController.swift
//  CustomCell
//
//  Created by Jahan Cherian on 4/4/15.
//  Copyright (c) 2015 Jahan Cherian. All rights reserved.
//

import UIKit

class BreakfastViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var arrayOfBreakfast: [Food] = [Food]()
    
    func setUpBreakfast()
    {
        var food1 = Food(title: "Cold Cereal", servingTime: "BREAKFAST", foodType: "Boxed Cereal", numSwipes: "1", foodState: "Cold")
        var food2 = Food(title: "Ham & Cheese Croissant", servingTime: "BREAKFAST", foodType: "Croissant", numSwipes: "1", foodState: "Hot")
        var food3 = Food(title: "Spinach & Cheese Croissant", servingTime: "BREAKFAST", foodType: "Boxed Croissant", numSwipes: "1", foodState: "Hot")
        var food4 = Food(title: "Steel-Cut Oatmeal Cup", servingTime: "BREAKFAST", foodType: "Oatmeal", numSwipes: "1", foodState: "Cold")
        var food5 = Food(title: "Yogurt Cup", servingTime: "BREAKFAST", foodType: "Yogurt Cup", numSwipes: "1", foodState: "Cold")
        var food6 = Food(title: "Fruit Cup", servingTime: "BREAKFAST", foodType: "Fruit Cup", numSwipes: "1", foodState: "Cold")
        var food7 = Food(title: "Yogurt Parfait Cup", servingTime: "BREAKFAST", foodType: "Yogurt Cup", numSwipes: "1", foodState: "Cold")
        var food54 = Food(title: "Fresh Fruit Cup ", servingTime: "ALL DAY", foodType: "Sides & Sweets", numSwipes: "1", foodState: "Cold")
        var food55 = Food(title: "Yogurt Parfait Cup ", servingTime: "ALL DAY", foodType: "Sides & Sweets", numSwipes: "1", foodState: "Cold")
        var food56 = Food(title: "Banana ", servingTime: "ALL DAY", foodType: "Sides & Sweets", numSwipes: "Available with Order", foodState: "Cold")
        var food57 = Food(title: "Apple ", servingTime: "ALL DAY", foodType: "Sides & Sweets", numSwipes: "Available with Order", foodState: "Cold")
        var food58 = Food(title: "Orange", servingTime: "ALL DAY", foodType: "Sides & Sweets", numSwipes: "Available with Order", foodState: "Cold")
        
        
        arrayOfBreakfast.append(food1)
        arrayOfBreakfast.append(food2)
        arrayOfBreakfast.append(food3)
        arrayOfBreakfast.append(food4)
        arrayOfBreakfast.append(food5)
        arrayOfBreakfast.append(food6)
        arrayOfBreakfast.append(food7)
        arrayOfBreakfast.append(food54)
        arrayOfBreakfast.append(food55)
        arrayOfBreakfast.append(food56)
        arrayOfBreakfast.append(food57)
        arrayOfBreakfast.append(food58)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpBreakfast()
        self.title = "Breakfast Menu"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfBreakfast.count
 
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        println("test");
        var cell = tableView.dequeueReusableCellWithIdentifier("myCustomCell2", forIndexPath: indexPath)
        var castedCell = cell as CustomCell
        
        let food = arrayOfBreakfast[indexPath.row]
        castedCell.setCell(food.title, servingTimeText: food.servingTime, foodTypeText: food.foodType, numSwipesInt: food.numSwipes, foodStateText: food.foodState)
        
        return cell as UITableViewCell
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
