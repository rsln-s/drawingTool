//
//  ColorSelector.swift
//  AweDraw
//
//  Created by Admin on 04.05.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

import UIKit

class ColorSelector: UIView {

    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBAction func colorChangedSliderAction(sender: UISlider) {
        var temp = UIColor(red: CGFloat(self.redSlider.value/255.0), green: CGFloat(self.greenSlider.value/255.0), blue: CGFloat(self.blueSlider.value/255.0), alpha: CGFloat(1.0))
        self.currentColor = temp
        updateColor()
    }
    
    
    var currentColor : UIColor!
    func updateColor(){
        self.backgroundColor = self.currentColor
        self.setNeedsDisplay()
    }
    
}
