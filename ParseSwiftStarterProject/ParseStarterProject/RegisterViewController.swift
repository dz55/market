//
//  RegisterViewController.swift
//  ParseStarterProject
//
//  Created by Diana Zhou on 8/2/15.
//  Copyright © 2015 Parse. All rights reserved.
//

import UIKit
import Parse

class RegisterViewController: UIViewController {

    //MARK : Properties
    @IBOutlet weak var firstInput: UITextField!
    @IBOutlet weak var lastInput: UITextField!
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var pwInput: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK : Actions
    
    @IBAction func registerPressed(sender: AnyObject) {
        var user = PFUser()
        user.username = emailInput.text
        user.password = pwInput.text
        user.email = emailInput.text
        // other fields can be set just like with PFObject
        user["first"] = firstInput.text
        user["last"] = lastInput.text
        
        user.signUpInBackgroundWithBlock {
            (succeeded: Bool, error: NSError?) -> Void in
            if let error = error {
                let errorString = error.userInfo?["error"] as? NSString
                // Show the errorString somewhere and let the user try again.
            } else {
                // Hooray! Let them use the app now.
            }
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
