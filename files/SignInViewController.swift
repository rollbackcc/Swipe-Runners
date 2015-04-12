//
//  SignInViewController.swift
//  CustomCell
//
//  Created by Jahan Cherian on 4/4/15.
//  Copyright (c) 2015 Jahan Cherian. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var usernameSignup: UITextField!
    @IBOutlet weak var passwordSignup: UITextField!
    @IBOutlet weak var emailSignup: UITextField!
    @IBOutlet weak var phoneSignup: UITextField!
    
    @IBAction func signupLogin(sender: AnyObject) {
        var usrEntered = usernameSignup.text
        var pwdEntered = passwordSignup.text
        var emlEntered = emailSignup.text
        var phoneEntered = phoneSignup.text
        if usrEntered != "" && pwdEntered != "" && emlEntered != "" {
            var user = PFUser()
            user.username = usrEntered
            user.password = pwdEntered
            user.email = emlEntered
            user["phone"] = phoneEntered
            user.signUpInBackgroundWithBlock {
                (succeeded: Bool!, error: NSError!) -> Void in
                if error == nil {
                    self.performSegueWithIdentifier("validSignUp", sender: self)
                    // Hooray! Let them use the app now.
                } else {
                    
                    // Show the errorString somewhere and let the user try again.
                }
            }

        }
        else {
            let alertController = UIAlertController(title: "Sorry.", message:
                "All Fields are required.", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sign Up Window"
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
