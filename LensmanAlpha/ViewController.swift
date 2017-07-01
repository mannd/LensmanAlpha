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
    @IBOutlet var statusView: UIView!
    @IBOutlet var commandView: UIView!
    @IBOutlet var screensView: UIView!

    // hides the status bar (battery indicator, etc.)
    override var prefersStatusBarHidden: Bool {
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // test animation
        flashView(view: statusView)
        RunAfterDelay(5, block: {
            self.endFlashView(view: self.statusView, delay: 0.0, color: .red) })
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
    
    func flashView(view: UIView){
        UIView.animate(withDuration: 1.0, delay: 0.0, options:[.repeat, .autoreverse], animations: {
            view.backgroundColor = .white
        }, completion:nil)
    }
    
    func endFlashView(view: UIView, delay: Double, color: UIColor) {
        
        UIView.animate(withDuration: 0.1, delay: delay, options:[.beginFromCurrentState], animations: {
            view.backgroundColor = color }, completion:nil)
    }
    
    func RunAfterDelay(_ delay: TimeInterval, block: @escaping ()->())
    {
        let time = DispatchTime.now() + Double(Int64(delay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
        
        DispatchQueue.main.asyncAfter(deadline: time, execute: block)
    }


}

