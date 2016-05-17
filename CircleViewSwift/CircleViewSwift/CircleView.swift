//
//  CircleView.swift
//  CircleViewSwift
//
//  Created by mainone on 16/5/16.
//  Copyright © 2016年 wjn. All rights reserved.
//

import UIKit

class CircleView: UIView {
    
    var progress: Double = 0.0 {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    //初始位置偏移量
    let offsetNum = 1.0
    
    override func drawRect(rect: CGRect) {
        let viewW = rect.size.width
        let viewH = rect.size.height
        let radius = viewW * 0.2
        let endAngle = progress * 2 * M_PI - M_PI_2 * offsetNum
        
        
        let context_back: CGContextRef = UIGraphicsGetCurrentContext()!
        CGContextSetLineWidth(context_back,3.0);
        CGContextSetRGBStrokeColor(context_back, 0.6, 0.6, 0.6, 1.0);
        CGContextAddArc(context_back, viewW * 0.5, viewH * 0.5, radius, 0, CGFloat(2*M_PI), 0);
        CGContextStrokePath(context_back);
        
        
        
        let context: CGContextRef = UIGraphicsGetCurrentContext()!
        CGContextSetLineWidth(context,3.0);
        CGContextSetRGBStrokeColor(context, 0, 0, 1, 1.0);
        CGContextAddArc(context, viewW * 0.5, viewH * 0.5, radius, CGFloat(-M_PI_2 *  offsetNum), CGFloat(endAngle), 0);
        
        CGContextStrokePath(context);
        
    }
    
  
    
    
    
}
