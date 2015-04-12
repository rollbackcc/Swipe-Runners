//
//  TableViewController.swift
//  Yik Yak Attempt 2
//
//  Created by Kristen Chui on 4/4/15.
//  Copyright (c) 2015 Kristen Chui. All rights reserved.
//

import UIKit
import Parse

class TableViewController: PFQueryTableViewController {
    
    var vals = ["Turkey Provolone no mayo, De Neve Crosswalk @ 9 PM","Chai Tea Latte & Cookie, Rieber Terrace @ 9:30 PM",
        "Clam Chowder in Bread Bowl, Hitch @ 10:00 PM", "Chicken Caeser Salad with apple, Hedrick Summit @ 10:10", "BBQ Beef Brisket, Sproul Cove @10:30"]
    
    
    override init!(style: UITableViewStyle, className: String!) {
        super.init(style: style, className: className)
    }
    
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.parseClassName = "Yak"
        self.textKey = "text"
        self.pullToRefreshEnabled = true
        self.objectsPerPage = 200
        
    }
    
    private func alert(message : String) {
        let alert = UIAlertController(title: "Oops something went wrong.", message: message, preferredStyle: UIAlertControllerStyle.Alert)
        let action = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil)
        let cancel = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil)
        let settings = UIAlertAction(title: "Settings", style: UIAlertActionStyle.Default) { (action) -> Void in
            UIApplication.sharedApplication().openURL(NSURL(string: UIApplicationOpenSettingsURLString)!)
            return
        }
        alert.addAction(settings)
        alert.addAction(action)
        self.presentViewController(alert, animated: true, completion: nil) //UIViewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.estimatedRowHeight = 60
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.title = "MessageBoard"

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        loadObjects()       //automatically refresh
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func objectAtIndexPath(indexPath: NSIndexPath!) -> PFObject! {
        var obj : PFObject? = nil
        println(self.objects.count)
        if(indexPath.row < self.objects.count){
            obj = self.objects[indexPath.row] as PFObject
        }
        
        return obj
    }
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!, object: PFObject!) -> PFTableViewCell! {
        func timeAgoSinceDate(date:NSDate, numericDates:Bool) -> String {
            let calendar = NSCalendar.currentCalendar()
            let unitFlags = NSCalendarUnit.CalendarUnitMinute | NSCalendarUnit.CalendarUnitHour | NSCalendarUnit.CalendarUnitDay | NSCalendarUnit.CalendarUnitWeekOfYear | NSCalendarUnit.CalendarUnitMonth | NSCalendarUnit.CalendarUnitYear | NSCalendarUnit.CalendarUnitSecond
            let now = NSDate()
            let earliest = now.earlierDate(date)
            let latest = (earliest == now) ? date : now
            let components:NSDateComponents = calendar.components(unitFlags, fromDate: earliest, toDate: latest, options: nil)
            
            if (components.year >= 2) {
                return "\(components.year) yrs ago"
            } else if (components.year >= 1){
                if (numericDates){
                    return "1 yr ago"
                } else {
                    return "Last yr"
                }
            } else if (components.month >= 2) {
                return "\(components.month) mnths ago"
            } else if (components.month >= 1){
                if (numericDates){
                    return "1 mnth ago"
                } else {
                    return "Last mnth"
                }
            } else if (components.weekOfYear >= 2) {
                return "\(components.weekOfYear) wks ago"
            } else if (components.weekOfYear >= 1){
                if (numericDates){
                    return "1 wk ago"
                } else {
                    return "Last wk"
                }
            } else if (components.day >= 2) {
                return "\(components.day) days ago"
            } else if (components.day >= 1){
                if (numericDates){
                    return "1 day ago"
                } else {
                    return "Yesterday"
                }
            } else if (components.hour >= 2) {
                return "\(components.hour) hrs ago"
            } else if (components.hour >= 1){
                if (numericDates){
                    return "1 hr ago"
                } else {
                    return "An hr ago"
                }
            } else if (components.minute >= 2) {
                return "\(components.minute) mins ago"
            } else if (components.minute >= 1){
                if (numericDates){
                    return "1 min ago"
                } else {
                    return "A min ago"
                }
            } else if (components.second >= 3) {
                return "\(components.second) secs ago"
            } else {
                return "Just now"
            }
            
        }
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as TableViewCell
        cell.yakText.text = object.valueForKey("text") as String
        cell.time.text = timeAgoSinceDate(NSDate(), true)
        return cell
    }
    
    
    @IBAction func button(sender: AnyObject) {
        let hitPoint = sender.convertPoint(CGPointZero, toView: self.tableView)
        let hitIndex = self.tableView.indexPathForRowAtPoint(hitPoint)
        
        NSLog("Top Index Path \(hitIndex?.row)")
    }

    // MARK: - Table view data source
    /*
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    // #warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1
    }
    */
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete method implementation.
    // Return the number of rows in the section.
        return self.objects.count
    }
    
    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as TableViewCell
    cell.yakText.text = vals[indexPath.row]
    cell.time.text = "\((indexPath.row + 1) * 3)m ago"
    cell.replies.text = "\((indexPath.row + 1) * 1) replies"
    return cell
    }

    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }

    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
