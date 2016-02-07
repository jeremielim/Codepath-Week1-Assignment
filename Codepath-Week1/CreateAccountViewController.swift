//
//  CreateAccountViewController.swift
//  Codepath-Week1
//
//  Created by Lim, Jeremie on 2/6/16.
//  Copyright © 2016 Lim, Jeremie. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {
   
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var createAccountBg: UIImageView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var signUpStrength: UIImageView!
    
    // Navigate Back to the Sign in Screens
    @IBAction func onWelcomePress(sender: AnyObject) {
        
        navigationController!.popViewControllerAnimated(true)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Detect if password field has changed
        passwordInput.addTarget(self,
            action: "textFieldDidChange:",
            forControlEvents: UIControlEvents.EditingChanged
        )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
     
    }
  
    // Show action sheet when user tapped on create button
    @IBAction func createTap(sender: UIButton) {
        // Close keyboard
        view.endEditing(true)
        
        let optionMenu = UIAlertController(title: "Before you can complete your registration, you must accept the Dropbox Terms of Service.", message: nil,preferredStyle: .ActionSheet)
        
        let agreeAction = UIAlertAction(title: "I Agree", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            
            // Open account created screen
            self.performSegueWithIdentifier("createdSegue", sender: self)
        })
        
        let termsAction = UIAlertAction(title: "View Terms", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            
            // Open terms modal
            self.performSegueWithIdentifier("termsSegue", sender: self)
        })
        
       
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: {
            (alert: UIAlertAction!) -> Void in
            
            print("Cancelled")
        })
        
        optionMenu.addAction(agreeAction)
        optionMenu.addAction(termsAction)
        optionMenu.addAction(cancelAction)
        
        self.presentViewController(optionMenu, animated: true, completion: nil)
    }
    
    // Close keyboard on background tap
    @IBAction func backgroundDidTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    // Detect how characters to determine password strength
    func textFieldDidChange(textField: UITextField) {
        let passwordCount = Int(passwordInput.text!.utf16.count)
        
        switch passwordCount {
            
        case 1:
            signUpStrength.image = UIImage(named: "signup_1")
        case 7:
            signUpStrength.image = UIImage(named: "signup_2")
        case 9:
            signUpStrength.image = UIImage(named: "signup_3")
        case 14:
            signUpStrength.image = UIImage(named: "signup_4")
            createButton.enabled = true
        default:
            ()
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
