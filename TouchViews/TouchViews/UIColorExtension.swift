//
//  UIColorExtension.swift
//  TouchViews
//
//  Created by Martin Chibwe on 1/19/18.
//  Copyright © 2018 Martin Chibwe. All rights reserved.
//

import Foundation

import UIKit
extension UIColor {
    
    static var random:UIColor {
        return UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: 1.0)
    }
}
