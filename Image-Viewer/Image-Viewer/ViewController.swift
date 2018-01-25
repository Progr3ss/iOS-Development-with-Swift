//
//  ViewController.swift
//  Image-Viewer
//
//  Created by Martin Chibwe on 1/19/18.
//  Copyright © 2018 Martin Chibwe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet var panGesture: UIPanGestureRecognizer!
    let images = ["ai1","ai2","ai3","ai4","ai5","face.jpeg"]
    var imageNo = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        panGesture.Ge
        
        let tapGestureRecognizer =
            UITapGestureRecognizer(target: self, action: #selector(handleTap))
        tapGestureRecognizer.numberOfTouchesRequired = 1
        tapGestureRecognizer.numberOfTapsRequired = 2
        imageView.addGestureRecognizer(tapGestureRecognizer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func handelPan(_ sender: UIPanGestureRecognizer) {
       
        let translation = sender.translation(in: self.view)
        imageView.center = CGPoint(x: imageView.center.x + translation.x, y: imageView.center.y + translation.y)
        sender.setTranslation(CGPoint.zero, in: self.view)
        

        print(translation)
    }
    
    @objc func handleTap(_sender: UITapGestureRecognizer){
        imageNo += 1
        if imageNo == images.count{ imageNo = 0}
        imageView.image = UIImage(named:images[imageNo])
    }
    
    
    
    
    @IBAction func handelPinch(_ sender: UIPinchGestureRecognizer) {
        imageView.transform = imageView.transform.scaledBy(x: sender.scale, y: sender.scale)
        sender.scale = 1
        
        
    }
    
    @IBAction func handelRotation(_ sender: UIRotationGestureRecognizer) {
        imageView.transform = imageView.transform.rotated(by: sender.rotation)
        sender.rotation = 0
    }
    

}
extension ViewController: UIGestureRecognizerDelegate {
    
   
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer,shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
                           
       
        return true
    }
}

