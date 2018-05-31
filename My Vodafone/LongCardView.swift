//
//  LongCardView.swift
//  My Vodafone
//
//  Created by Chef Dennis Barimah on 30/05/2018.
//  Copyright © 2018 Chef Dennis Barimah. All rights reserved.
//

import UIKit

@IBDesignable class LongCardView: UIView {

    @IBInspectable var cornerRadius: CGFloat = 2
    @IBInspectable var shadowOffSetWidth: CGFloat = 0
    @IBInspectable var shadowOffSetHeight: CGFloat = 5
    @IBInspectable var shadowColor: UIColor = UIColor.black
    @IBInspectable var shadowOpacity: CGFloat = 0.1
    
    override func layoutSubviews() {
        layer.cornerRadius = cornerRadius
        layer.shadowColor = shadowColor.cgColor
        
    }
}
