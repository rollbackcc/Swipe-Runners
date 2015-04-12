//
//  DrinksViewController.swift
//  CustomCell
//
//  Created by Jahan Cherian on 4/4/15.
//  Copyright (c) 2015 Jahan Cherian. All rights reserved.
//

import UIKit

class DrinksViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    var arrayOfDrinks: [Food] = [Food]()
    
    @IBOutlet weak var myTableView: UITableView!
    
    func setUpDrinks()
    {
        var food62 = Food(title: "Brewed Coffee ", servingTime: "ALL DAY", foodType: "Coffee & Tea", numSwipes: "1", foodState: "Hot/Cold")
        var food63 = Food(title: "Cafe Mocha ", servingTime: "ALL DAY", foodType: "Coffee & Tea", numSwipes: "1", foodState: "Hot/Cold")
        var food64 = Food(title: "Cafe Vanilla ", servingTime: "ALL DAY", foodType: "Coffee & Tea", numSwipes: "1", foodState: "Hot/Cold")
        var food65 = Food(title: "Cafe Caramel ", servingTime: "ALL DAY", foodType: "Coffee & Tea", numSwipes: "1", foodState: "Hot/Cold")
        var food66 = Food(title: "Cafe Latte ", servingTime: "ALL DAY", foodType: "Coffee & Tea", numSwipes: "1", foodState: "Hot/Cold")
        var food67 = Food(title: "Mocha Latte ", servingTime: "ALL DAY", foodType: "Coffee & Tea", numSwipes: "1", foodState: "Hot/Cold")
        var food68 = Food(title: "Vanilla Latte ", servingTime: "ALL DAY", foodType: "Coffee & Tea", numSwipes: "1", foodState: "Hot/Cold")
        var food69 = Food(title: "Caramel Latte ", servingTime: "ALL DAY", foodType: "Coffee & Tea", numSwipes: "1", foodState: "Hot/Cold")
        var food70 = Food(title: "White Chocolate Latte ", servingTime: "ALL DAY", foodType: "Coffee & Tea", numSwipes: "1", foodState: "Hot/Cold")
        var food71 = Food(title: "Cappuccino ", servingTime: "ALL DAY", foodType: "Coffee & Tea", numSwipes: "1", foodState: "Hot/Cold")
        var food72 = Food(title: "Hot Chocolate ", servingTime: "ALL DAY", foodType: "Coffee & Tea", numSwipes: "1", foodState: "Hot")
        var food73 = Food(title: "Hot Vanilla ", servingTime: "ALL DAY", foodType: "Coffee & Tea", numSwipes: "1", foodState: "Hot")
        var food74 = Food(title: "Brewed Tea ", servingTime: "ALL DAY", foodType: "Coffee & Tea", numSwipes: "1", foodState: "Hot")
        var food75 = Food(title: "Tea Latte ", servingTime: "ALL DAY", foodType: "Coffee & Tea", numSwipes: "1", foodState: "Hot")
        var food76 = Food(title: "Chai Tea Latte ", servingTime: "ALL DAY", foodType: "Coffee & Tea", numSwipes: "1", foodState: "Hot/Cold")
        var food77 = Food(title: "Americano ", servingTime: "ALL DAY", foodType: "Coffee & Tea", numSwipes: "1", foodState: "Hot/Cold")
        var food78 = Food(title: "Expresso ", servingTime: "ALL DAY", foodType: "Coffee & Tea", numSwipes: "1", foodState: "Hot")

        arrayOfDrinks.append(food62)
        arrayOfDrinks.append(food63)
        arrayOfDrinks.append(food64)
        arrayOfDrinks.append(food65)
        arrayOfDrinks.append(food66)
        arrayOfDrinks.append(food67)
        arrayOfDrinks.append(food68)
        arrayOfDrinks.append(food69)
        arrayOfDrinks.append(food70)
        arrayOfDrinks.append(food71)
        arrayOfDrinks.append(food72)
        arrayOfDrinks.append(food73)
        arrayOfDrinks.append(food74)
        arrayOfDrinks.append(food75)
        arrayOfDrinks.append(food76)
        arrayOfDrinks.append(food77)
        arrayOfDrinks.append(food78)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpDrinks()
        self.title = "Drinks Menu"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfDrinks.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell: CustomCell = self.myTableView.dequeueReusableCellWithIdentifier("myCustomCell2", forIndexPath: indexPath) as CustomCell
        let food = arrayOfDrinks[indexPath.row]
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
