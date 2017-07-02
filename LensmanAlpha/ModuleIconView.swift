//
//  ModuleIconView.swift
//  LensmanAlpha
//
//  Created by David Mann on 7/1/17.
//  Copyright © 2017 David Mann. All rights reserved.
//

import UIKit

class ModuleIconView: UIView {
    
    var mainLabel: UILabel!
    let labelFont = "GillSans-Bold"
    let labelFontSize: CGFloat = 60


    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
        

        mainLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        mainLabel.text = "NAV"
        mainLabel.font = UIFont(name: labelFont, size: labelFontSize)
        mainLabel.textColor = .white
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 1
        mainLabel.sizeToFit()
        
        mainLabel.layer.borderColor = UIColor.green.cgColor
        mainLabel.layer.borderWidth = 3.0;
        
        addSubview(mainLabel)
        mainLabel.center = CGPoint(x: frame.width / 2, y: frame.height / 2)

        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.backgroundColor = .red
        
        mainLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        mainLabel.text = "NAV"
        mainLabel.font = UIFont(name: labelFont, size: labelFontSize)
        mainLabel.textColor = .white
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 1
        mainLabel.sizeToFit()
        
        mainLabel.layer.borderColor = UIColor.green.cgColor
        mainLabel.layer.borderWidth = 3.0;
        
        addSubview(mainLabel)
//        mainLabel.center = CGPoint(x: frame.width / 2, y: frame.height / 2)
        
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
