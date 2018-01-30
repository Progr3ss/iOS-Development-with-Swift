//
//  ViewController.swift
//  ViewsInCode
//
//  Created by Martin Chibwe on 1/19/18.
//  Copyright © 2018 Martin Chibwe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var redView: UIView!
    var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        redView = UIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height / 2))
        redView.backgroundColor = UIColor.red
        view.addSubview(redView)
        view.backgroundColor = UIColor.blue
        label = UILabel(frame: CGRect(x: 0, y: self.view.bounds.height / 2, width: view.bounds.width, height: 50))
//        label.backgroundColor = UIColor.green
       
        label.text = "Hello martin"
        label.font = label.font.withSize(40)
        label.sizeToFit()
        view.addSubview(label)
        
        
//        let constraints:[NSLayoutConstraint] = [
//            //red view
//            redView.topAnchor.constraint(equalTo: view.topAnchor),
//            redView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            redView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            redView.heightAnchor.constraint(equalTo: view.heightAnchor,
//                                            multiplier: 0.5),
//            //label
//            label.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 8),
//            label.leadingAnchor.constraint(equalTo:
//                view.layoutMarginsGuide.leadingAnchor)
//        ]
//        redView.translatesAutoresizingMaskIntoConstraints = false
//        label.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate(constraints)
        
        redView.autoresizingMask = [.flexibleHeight, .flexibleWidth,
                                    .flexibleBottomMargin]
        label.autoresizingMask = [.flexibleTopMargin, .flexibleBottomMargin,
                                  .flexibleRightMargin]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

