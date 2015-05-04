//
//  ViewController.swift
//  AweDraw
//
//  Created by Руслан on 30.04.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var toolsIsShowing : Bool = false
    
    @IBOutlet weak var myDrawView: UIView!
    @IBOutlet weak var myToolsView: UIView!
    

    @IBAction func tapHappened(sender: AnyObject) {
        if ( toolsIsShowing){
            toolsIsShowing = false
            myToolsView.frame.origin.x = CGFloat(-1000)
        }else{
            toolsIsShowing = true
            myToolsView.frame.origin.x = CGFloat(0.0)
        }
        
        println("swipe happened")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

