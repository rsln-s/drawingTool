//
//  CurrentDrawing.swift
//  AweDraw
//
//  Created by Руслан on 30.04.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

// Class for settings and shit

import Foundation
import UIKit

func +(lhs: CGPoint, rhs:CGPoint) -> CGPoint{
    return CGPoint(x: lhs.x+rhs.x, y: lhs.y+rhs.y)
}

class CurrentDrawing: NSObject {
    var color:UIColor = UIColor.blackColor()
    var lineWidth:CGFloat = 1.0
    var path:UIBezierPath = UIBezierPath()
    var currentPoint:CGPoint?
}
