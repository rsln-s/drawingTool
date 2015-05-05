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
    var red : CGFloat = 1.0
    var green : CGFloat = 1.0
    var blue : CGFloat = 1.0
//    static var currentColor : [Int] {
//        get{
//        let userDefaults = NSUserDefaults.standardUserDefaults()
//            return userDefaults.objectForKey( ColorSelectorHelper.NSDictionaryCurrentColorKey) as? [Int] ?? [255,255,255]
//        }
//        set{
//            var userDefaults = NSUserDefaults.standardUserDefaults()
//            userDefaults.setObject(newValue, forKey: ColorSelectorHelper.NSDictionaryCurrentColorKey)
//            userDefaults.synchronize()
//        }
//    }
}

var colorSelectorHelper = ColorSelectorHelper()


class ColorSelector: UIViewController {
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBAction func colorChangedSliderAction(sender: UISlider) {
        colorSelectorHelper.red = CGFloat(self.redSlider.value/255.0)
        colorSelectorHelper.green = CGFloat(self.greenSlider.value/255.0)
        colorSelectorHelper.blue = CGFloat(self.blueSlider.value/255.0)
        updateColor()
    }
    
    func updateColor(){
        self.view.backgroundColor = UIColor(red: colorSelectorHelper.red, green: colorSelectorHelper.green, blue: colorSelectorHelper.blue, alpha: CGFloat(1.0))
    }


    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.redSlider.value = Float(colorSelectorHelper.red * 255)
        self.greenSlider.value = Float(colorSelectorHelper.green * 255)
        self.blueSlider.value = Float(colorSelectorHelper.blue * 255)
        updateColor()
    }
   
    var currentColor : UIColor!

    
}
