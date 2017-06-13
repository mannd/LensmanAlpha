//
//  StatusButton.swift
//  LensmanAlpha
//
//  Created by David Mann on 6/7/17.
//  Copyright © 2017 David Mann. All rights reserved.
//

import UIKit

class StatusButton: UIButton {
    
    let cornerRadius: CGFloat = 5
    let borderWidth: CGFloat = 2
    let labelFont = "GillSans-Bold"
    let labelFontSize: CGFloat = 20
    let buttonWidth: CGFloat = 80
    let buttonHeight: CGFloat = 80

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.backgroundColor = UIColor.red.cgColor
        layer.cornerRadius = cornerRadius
        layer.borderWidth = borderWidth
        frame.size = CGSize(width: buttonWidth, height: buttonHeight)
        titleLabel?.font = UIFont(name: labelFont, size: labelFontSize)
        setTitle("NAV", for: UIControlState.normal)
        setTitleColor(.black, for: UIControlState.normal)
    }
    
//    override func awakeFromNib() {
//        layer.backgroundColor = UIColor.red.cgColor
//        layer.cornerRadius = cornerRadius
//        layer.borderWidth = borderWidth
//        frame.size = CGSize(width: buttonWidth, height: buttonHeight)
//        titleLabel?.font = UIFont(name: labelFont, size: labelFontSize)
//        setTitle("NAV", for: UIControlState.normal)
//        setTitleColor(.black, for: UIControlState.normal)
//    }

}
