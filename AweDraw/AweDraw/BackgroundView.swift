//
//  BackgroundView.swift
//  AweDraw
//
//  Created by Руслан on 06.05.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

import UIKit

class BackgroundView: UIView {

    override func drawRect(rect: CGRect) {
        var tmpHistory = EntireDrawing.sharedHistory().drawingHistory
        for stroke in tmpHistory{
            stroke.color.setStroke()
            stroke.path.lineWidth = stroke.lineWidth
            stroke.path.stroke()
        }
    }

}
