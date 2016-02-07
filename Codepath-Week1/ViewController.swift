//
//  ViewController.swift
//  Codepath-Week1
//
//  Created by Lim, Jeremie on 2/3/16.
//  Copyright © 2016 Lim, Jeremie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        scrollView.contentSize = CGSize(width: 960, height: 568)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

