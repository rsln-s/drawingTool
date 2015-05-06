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
    
    
//    func deleteCurrentStroke(){
//        self.currentStroke = CurrentDrawing()
//        self.layer.renderInContext(UIGraphicsGetCurrentContext())
//        UIGraphicsGetImageFromCurrentImageContext().drawInRect(CGRectMake(0, 0, self.frame.size.width, self.frame.size.height) )
//        var outputImage = UIGraphicsGetImageFromCurrentImageContext();
//        UIGraphicsEndImageContext();
//        //UIImageWriteToSavedPhotosAlbum(outputImage, self,@selector(image:didFinishSavingWithError:contextInfo:), nil);
//        UIImageWriteToSavedPhotosAlbum(outputImage, self, Selector("image:didFinishSavingWithError:contextInfo:"), nil)
//    }
//    
//    func image(image: UIImage, didFinishSavingWithError error: NSErrorPointer, contextInfo: UnsafePointer<()>) {
//        dispatch_async(dispatch_get_main_queue(), {
//            UIAlertView(title: "Success", message: "This image has been saved to your Camera Roll successfully", delegate: nil, cancelButtonTitle: "Close").show()
//        })
//    }
    
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
