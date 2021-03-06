//
//  ColorSelector.swift
//  AweDraw
//
//  Created by Admin on 04.05.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

import UIKit

struct ColorSelectorHelper{
    static let NSDictionaryCurrentColorKey = "currentColorKey"
    var red : CGFloat = 0
    var green : CGFloat = 0
    var blue : CGFloat = 0
}

var colorSelectorHelper = ColorSelectorHelper()


class ColorSelector: UIViewController {
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var defaultColors: UIView!
    @IBAction func colorChangedSliderAction(sender: UISlider) {
        colorSelectorHelper.red = CGFloat(self.redSlider.value/255.0)
        colorSelectorHelper.green = CGFloat(self.greenSlider.value/255.0)
        colorSelectorHelper.blue = CGFloat(self.blueSlider.value/255.0)
        updateColor()
    }

    @IBAction func setColorByButton(sender: UIButton) {
        self.view.backgroundColor = sender.backgroundColor
    }
    func updateColor(){
        self.view.backgroundColor = UIColor(red: colorSelectorHelper.red, green: colorSelectorHelper.green, blue: colorSelectorHelper.blue, alpha: CGFloat(1.0))    }
    func updateSliders(){
        self.redSlider.value = Float(colorSelectorHelper.red * 255)
        self.greenSlider.value = Float(colorSelectorHelper.green * 255)
        self.blueSlider.value = Float(colorSelectorHelper.blue * 255)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        updateSliders()
        updateColor()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let btn = sender as? UIButton{
            if btn.titleLabel?.text == "Ok"{
                EntireDrawing.sharedHistory().currentColor = self.view.backgroundColor ?? UIColor.blackColor()
            }
        }
    }
    
//    override func viewWillDisappear(animated: Bool) {
//        super.viewWillDisappear(animated)
//        EntireDrawing.sharedHistory().currentColor = self.view.backgroundColor ?? UIColor.blackColor()
//    }
   

}
