//
//  ViewController.swift
//  AweDraw
//
//  Created by Руслан on 30.04.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func changeColorBtnClicked(sender: UIButton) {
    }
    var toolsIsShowing : Bool = false
    
//    var myDrawing = EntireDrawing()
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var lineSizePresenterView: UIView!
    @IBOutlet weak var myDrawView: DrawView!
    @IBOutlet weak var myToolsView: UIView!
    @IBOutlet var panRecogniser: UIPanGestureRecognizer!
    
    @IBAction func lineSizeValueChanged(sender: UIStepper) {
        EntireDrawing.sharedHistory().currentLineSize = CGFloat(sender.value)
        println("\(sender.value)")
        lineSizePresenterView.setNeedsDisplay()
        
    }
    
    
    
    
    
    @IBAction func panHappened(recogniser: UIPanGestureRecognizer) {
        var startingPoint = recogniser.locationInView(self.view)
        if recogniser.state == UIGestureRecognizerState.Began{
            self.myDrawView.currentStroke.path.moveToPoint(startingPoint)
            self.myDrawView.currentStroke.currentPoint = startingPoint
            self.myDrawView.currentStroke.color = EntireDrawing.sharedHistory().currentColor
            self.myDrawView.currentStroke.lineWidth = EntireDrawing.sharedHistory().currentLineSize
        }
        let translation = recogniser.translationInView(self.view)
        self.myDrawView.currentStroke.currentPoint = self.myDrawView.currentStroke.currentPoint! + translation
        self.myDrawView.currentStroke.path.addLineToPoint(startingPoint)
        if recogniser.state == UIGestureRecognizerState.Ended {
            EntireDrawing.sharedHistory().drawingHistory.append(self.myDrawView.currentStroke)
            self.myDrawView.deleteCurrentStroke()
            self.backgroundView.setNeedsDisplay()
        }
        self.myDrawView.setNeedsDisplay()
    }

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

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        self.panRecogniser.maximumNumberOfTouches = 1
    }
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if let destination = sender?.destinationViewController as? ColorSelector{
//        }
//    }


}

