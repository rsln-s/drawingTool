//
//  EntireDrawing.swift
//  AweDraw
//
//  Created by Руслан on 30.04.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

import UIKit

var history:EntireDrawing?

class EntireDrawing: NSObject {
    var drawingHistory:[CurrentDrawing] = []
    var currentColor:UIColor = UIColor.whiteColor()
    
    class func sharedHistory() -> EntireDrawing {
        if (history == nil) {
            history = EntireDrawing()
        }
        return history!
    }
        
}
