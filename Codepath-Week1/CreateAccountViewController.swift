//
//  CreateAccountViewController.swift
//  Codepath-Week1
//
//  Created by Lim, Jeremie on 2/6/16.
//  Copyright © 2016 Lim, Jeremie. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {
    @IBOutlet weak var passwordInput: UITextField!
    
    @IBOutlet weak var createAccountBg: UIImageView!
    
    @IBOutlet weak var emailField: UITextField!
    

    @IBAction func onWelcomePress(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Detect if password field has changed
        passwordInput.addTarget(self, action: "textFieldDidChange:", forControlEvents: UIControlEvents.EditingChanged)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
     
    }
  
    @IBAction func createTap(sender: UIButton) {
        view.endEditing(true)
        
        let optionMenu = UIAlertController(title: "Before you can complete your registration, you must accept the Dropbox Terms of Service.", message: nil,preferredStyle: .ActionSheet)
        
        let agreeAction = UIAlertAction(title: "I Agree", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.performSegueWithIdentifier("createdSegue", sender: self)
        })
        let termsAction = UIAlertAction(title: "View Terms", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            
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
    
    
    @IBAction func backgroundDidTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    func textFieldDidChange(textField: UITextField) {
        let passwordCount = Int(passwordInput.text!.utf16.count)
        
        switch passwordCount {
        case 1:
            createAccountBg.image = UIImage(named: "create1")
        case 7:
            createAccountBg.image = UIImage(named: "create2")
        case 9:
            createAccountBg.image = UIImage(named: "create3")
        case 14:
            createAccountBg.image = UIImage(named: "create4")
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
