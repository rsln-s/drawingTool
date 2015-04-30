//
//  ViewController.swift
//  AweDraw
//
//  Created by Руслан on 30.04.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myDrawView: UIView!
    @IBOutlet weak var myToolsView: UIView!
    

    @IBAction func tapHappened(sender: AnyObject) {
        myToolsView.frame.origin.x -= 100
        myDrawView.alpha = 0.9
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

