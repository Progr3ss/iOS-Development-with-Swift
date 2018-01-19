//
//  coloredView.swift
//  TouchViews
//
//  Created by Martin Chibwe on 1/19/18.
//  Copyright © 2018 Martin Chibwe. All rights reserved.
//

import UIKit

class coloredView: UIView {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.backgroundColor = UIColor.random
    }

}
