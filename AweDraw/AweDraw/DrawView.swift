//
//  DrawView.swift
//  AweDraw
//
//  Created by Руслан on 30.04.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

import UIKit

class DrawView: UIView {
    
    var entireDrawing:EntireDrawing = EntireDrawing()
    var currentStroke:CurrentDrawing = CurrentDrawing()
    
    func deleteCurrentStroke(){
        self.currentStroke = CurrentDrawing()
    }
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        self.currentStroke.path.stroke()
    }

}
