//
//  PostViewController.swift
//  Yik Yak Attempt 2
//
//  Created by Kristen Chui on 4/4/15.
//  Copyright (c) 2015 Kristen Chui. All rights reserved.
//

import UIKit
import Parse


class PostViewController: UIViewController,UITextViewDelegate {
    
    var reset:Bool = false
    var arrayOfTextFields: [UITextField] = []
    var displayMessage:String = ""
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var orderField: UITextField!
    @IBOutlet weak var extraDetails: UITextField!
    @IBOutlet weak var meetingLocation: UITextField!
    @IBOutlet weak var meetingTime: UITextField!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.arrayOfTextFields.append(nameField)
        self.arrayOfTextFields.append(orderField)
        self.arrayOfTextFields.append(extraDetails)
        self.arrayOfTextFields.append(meetingLocation)
        self.arrayOfTextFields.append(meetingTime)
        

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelClicked(sender: UIButton) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    

    @IBAction func postClicked(sender: UIButton)
    {
        
        if (nameField.text.isEmpty || orderField.text.isEmpty || meetingLocation.text.isEmpty || meetingTime.text.isEmpty)
        {
            let alert = UIAlertController(title: "No Text added in required field(s)", message: "Please enter the required text!", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
        else
        {
            for textField in arrayOfTextFields
            {
                displayMessage += textField.text + " "
            }
            
            let testObject = PFObject(className: "Yak")
            testObject["text"] = self.displayMessage
            testObject["replies"] = 0
            testObject.saveInBackgroundWithBlock({ (test, err) -> Void in
                println(test)
                println(err)
            })
            self.navigationController?.popViewControllerAnimated(true)
        }
    }
    
    
    func textViewDidChange(textView: UITextView) {
        if(reset == false){
            //self.postView.text = String(Array(self.postView.text)[0])
            reset = true
        }
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
