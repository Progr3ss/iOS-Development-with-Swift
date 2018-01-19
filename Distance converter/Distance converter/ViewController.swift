//
//  ViewController.swift
//  Distance converter
//
//  Created by Martin Chibwe on 1/19/18.
//  Copyright © 2018 Martin Chibwe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var milesTextField: UITextField!
    @IBOutlet weak var kmTextField: UITextField!
    
    var distance = Distance(miles: 1000)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        milesTextField.text = "\(distance.miles)"
        kmTextField.text = "\(distance.km)"
        
        milesTextField.addTarget(self, action: #selector(convertToMiles), for: .editingChanged)
        kmTextField.addTarget(self, action: #selector(convertToKm), for: .editingChanged)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @objc func convertToKm(_ sender: Any) {
        if let km = Double(kmTextField.text!) {
            distance.km = km
            milesTextField.text = "\(Int(distance.miles))"
            
        }
    }
    
    
    
    @objc func convertToMiles(_ sender: Any) {
        if let miles = Double(milesTextField.text!){
                        distance.miles = miles
                        kmTextField.text = "\(Int(distance.km))"
        
    }
}
    


}
