//
//  LoginViewController.swift
//  CustomCell
//
//  Created by Jahan Cherian on 4/4/15.
//  Copyright (c) 2015 Jahan Cherian. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameLogin: UITextField! //link txt fields to vars
    @IBOutlet weak var passwordLogin: UITextField!
    
    @IBAction func logIn(sender: AnyObject) {
        PFUser.logInWithUsernameInBackground(usernameLogin.text, password: passwordLogin.text) {
            (user: PFUser!, error: NSError!) -> Void in
            if user != nil {
                self.performSegueWithIdentifier("validLogin", sender: self)
                // Do stuff after successful login.
            } else {
                // The login failed. Check error to see why.
                let alertController = UIAlertController(title: "Sorry.", message:
                    "All Fields are required.", preferredStyle: UIAlertControllerStyle.Alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
                
                self.presentViewController(alertController, animated: true, completion: nil)
            }
        }

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Login Window"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
