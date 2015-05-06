//
//  DrawView.swift
//  AweDraw
//
//  Created by Руслан on 30.04.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

import UIKit

class DrawView: UIView {
    
    var currentStroke:CurrentDrawing = CurrentDrawing()
        
    override func drawRect(rect: CGRect) {
        let tmpHistory = EntireDrawing.sharedHistory().drawingHistory
        for stroke in tmpHistory{
            stroke.color.setStroke()
            stroke.path.lineWidth = stroke.lineWidth
            stroke.path.stroke()
        }
        if 1>0{
            self.currentStroke.color.setStroke()
            self.currentStroke.path.lineWidth = self.currentStroke.lineWidth
            self.currentStroke.path.stroke()
            
        }
    }

}
