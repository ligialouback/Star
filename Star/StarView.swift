//
//  StarView.swift
//  Star
//
//  Created by alex on 06/03/18.
//  Copyright © 2018 alex. All rights reserved.
//

import UIKit

@IBDesignable
class StarView: UIView {
    
    @IBInspectable
    var strokeColor: UIColor = UIColor.blue
    
    @IBInspectable
    var fillColor: UIColor = UIColor.cyan
    
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath ()
        
        path.move(to: CGPoint(x: rect.midX, y:0))
        path.addLine(to: CGPoint(x: rect.maxX*2/3, y: rect.maxY*1/4))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY*1/4))
        path.addLine(to: CGPoint(x: rect.maxX*5/6, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY*3/4))
        path.addLine(to: CGPoint(x: rect.maxX*2/3, y: rect.maxY*3/4))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX*1/3, y: rect.maxY*3/4))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY*3/4))
        path.addLine(to: CGPoint(x: rect.maxX*1/6, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY*1/4))
        path.addLine(to: CGPoint(x: rect.maxX*1/3, y: rect.maxY*1/4))
        path.addLine(to: CGPoint(x: rect.midX, y:0))
        
        path.close()
        
        strokeColor.setStroke()
        fillColor.setFill()
        
        path.lineWidth = 5
        path.fill()
        path.stroke()
        
}

}
