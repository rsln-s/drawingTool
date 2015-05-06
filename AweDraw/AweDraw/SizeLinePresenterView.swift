//
//  SizeLinePresenterView.swift
//  AweDraw
//
//  Created by Admin on 06.05.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

import UIKit

class SizeLinePresenterView: UIView {
    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        
        var bezierPath = UIBezierPath()
        bezierPath.lineWidth = EntireDrawing.sharedHistory().currentLineSize
        EntireDrawing.sharedHistory().currentColor.setStroke()
        var width = self.bounds.width
        var height = self.bounds.height
        var arrowEnd = CGPoint( x: width/2 ,y: height/5*3 )
        var tempPoint = arrowEnd
        tempPoint.y = arrowEnd.y - height/1
        bezierPath.moveToPoint(CGPoint(x: width/2 ,y: height/5*1))
        bezierPath.addLineToPoint(arrowEnd)
        tempPoint.x = arrowEnd.x + width/10
        tempPoint.y = arrowEnd.y - height/10
        bezierPath.addLineToPoint(tempPoint)
        bezierPath.moveToPoint(arrowEnd)
        tempPoint.x = arrowEnd.x - width/10
        tempPoint.y = arrowEnd.y - height/10
        bezierPath.addLineToPoint(tempPoint)
        bezierPath.stroke()

        }
}
