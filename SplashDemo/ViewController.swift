//
//  ViewController.swift
//  SplashDemo
//
//  Created by Abdul Yasin on 25/04/16.
//  Copyright © 2016 Virtual Employee Pvt. Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.blackColor()
        
        let mainScreen = UIScreen.mainScreen().bounds.size
        let view = UIView(frame: CGRectMake(0,0,mainScreen.width, mainScreen.height))
        view.backgroundColor = UIColor.blackColor()
        self.view.addSubview(view)
        
        let label = UILabel(frame: CGRectMake(0,100,mainScreen.width, 100))
        label.text = "Splash Animation"
        label.textAlignment = .Center
        label.font = UIFont.systemFontOfSize(30, weight: 10)
        label.backgroundColor = UIColor.clearColor()
        label.textColor = UIColor.clearColor()
        self.view.addSubview(label)
        
        
       UIView.transitionWithView(label, duration: 1, options: .TransitionCrossDissolve, animations: {
        label.textColor = UIColor.redColor()
        view.backgroundColor = UIColor.blackColor()
        }, completion:   {
            (value: Bool) in
            UIView.transitionWithView(label, duration: 1, options: .TransitionCrossDissolve, animations: {
                view.backgroundColor = UIColor.redColor()
                label.textColor = UIColor.whiteColor()
                }, completion: nil)
       })
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

