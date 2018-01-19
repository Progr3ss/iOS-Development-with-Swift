//
//  ViewController.swift
//  TouchViews
//
//  Created by Martin Chibwe on 1/19/18.
//  Copyright © 2018 Martin Chibwe. All rights reserved.
//

import UIKit
import Foundation
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //set up views
        let margin:CGFloat = 20
        let halfWidth = view.frame.width / 2
        let halfHeight = view.frame.height / 2
        
        let viewA = coloredView(frame: CGRect(
            x: margin,
            y: margin,
            width: halfWidth,
            height: halfWidth
        ))
        
        viewA.backgroundColor = UIColor.random
        self.view.addSubview(viewA)
        
        let viewB = coloredView(frame: CGRect(
            x: view.frame.width - halfWidth - margin,
            y: (view.frame.height / 2) - halfWidth,
            width: halfWidth,
            height: halfWidth
        ))
        viewB.backgroundColor = UIColor.random
        self.view.addSubview(viewB)
        
        let viewC = coloredView(frame: CGRect(
            x: margin,
            y: halfHeight + margin,
            width: view.frame.width - (margin * 2),
            height: halfHeight - (margin * 2)
        ))
        viewC.backgroundColor = UIColor.random
        self.view.addSubview(viewC)
        
        let viewD = coloredView(frame: CGRect(
            x: (view.frame.width / 2) - margin,
            y: margin,
            width: halfWidth - margin * 2,
            height: viewC.frame.height - (margin * 2)
        ))
        viewD.backgroundColor = UIColor.random
        viewC.addSubview(viewD)                     // View D is a subview of view C
        
        
        self.view.backgroundColor = UIColor.random
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.backgroundColor = UIColor.random
    }

  


}

