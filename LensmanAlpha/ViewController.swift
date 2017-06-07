//
//  ViewController.swift
//  LensmanAlpha
//
//  Created by David Mann on 10/12/14.
//  Copyright (c) 2014 David Mann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var mainStackView: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        if size.width > size.height {
            mainStackView.axis = .horizontal
        } else {
            mainStackView.axis = .vertical
        }
        mainStackView.layoutSubviews()
        mainStackView.setNeedsDisplay()
    }


}

