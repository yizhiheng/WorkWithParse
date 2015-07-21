//
//  ViewController.swift
//  WorkWithParse
//
//  Created by Zhiheng Yi on 2015-07-21.
//  Copyright (c) 2015 Zhiheng Yi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let query = PFQuery(className:"DemoData")
        query.findObjectsInBackgroundWithBlock {
            (objects: [AnyObject]?, error: NSError?) -> Void in
            if error == nil {
                // Successfully retrieved the objects from Parse
                if let objects = objects as? [PFObject] {
                    println(objects[0])
                // Do something
                }
            } else {
                // Log details of the failure
                println("Error: \(error) \(error!.userInfo)")
            }
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
                super.didReceiveMemoryWarning()
                // Dispose of any resources that can be recreated.
    }
    
    
}

