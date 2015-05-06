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
    
    func deleteCurrentStroke(){
        self.currentStroke = CurrentDrawing()
    }
    
    override func drawRect(rect: CGRect) {
        self.currentStroke.path.lineWidth = self.currentStroke.lineWidth
        self.currentStroke.color.setStroke()
        self.currentStroke.path.stroke()
    }

}
