//
//  circleView.swift
//  Drawing
//
//  Created by Ravi Pinamacha on 2/13/18.
//  Copyright © 2018 Divya. All rights reserved.
//

import UIKit

@IBDesignable
class CircleView: UIView {

    var circleLayer: CAShapeLayer!
    
    @IBInspectable
    var circleLayerColor:UIColor = UIColor.gray {
        didSet{updateCircleProperties()}
    }
   
    @IBInspectable
    var borderWidth:CGFloat = 1 {
        didSet{updateCircleProperties()}
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layoutCircle()
    }
    func layoutCircle() {
        if circleLayer == nil {
            circleLayer = CAShapeLayer()
            layer.addSublayer(circleLayer)
            
            let rect = bounds.insetBy(dx: borderWidth / 3, dy: borderWidth / 2)
            let path = UIBezierPath(ovalIn: rect)
            circleLayer.fillColor = circleLayerColor.cgColor
            circleLayer.lineWidth = borderWidth
            circleLayer.path = path.cgPath
            
        }
    }
    func updateCircleProperties() {
        if circleLayer != nil {
            circleLayer.fillColor = circleLayerColor.cgColor
            circleLayer.lineWidth = borderWidth
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
       
    }
    
}
