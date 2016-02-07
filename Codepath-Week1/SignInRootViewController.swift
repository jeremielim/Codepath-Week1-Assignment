//
//  SignInRootViewController.swift
//  Codepath-Week1
//
//  Created by Lim, Jeremie on 2/4/16.
//  Copyright © 2016 Lim, Jeremie. All rights reserved.
//

import UIKit

class SignInRootViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Immediately show sign in form
        performSegueWithIdentifier("signInSegue", sender: self)
        
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
