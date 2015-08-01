//
//  ViewController.swift
//  Stuller 1
//
//  Created by Raul Ernesto Escobedo Herrera on 7/4/15.
//  Copyright (c) 2015 Raul Ernesto Escobedo Herrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var slider: UISlider!
    
    var images: [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 1..<23 {
            images.append(UIImage(named: "\(i)")!)
            
        slider.minimumTrackTintColor = UIColor.blackColor()
        slider.setThumbImage(UIImage(named:"triangle")!, forState: .Normal)
                   
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func sliderValueChanged(sender: UISlider) {
        let index = Int(sender.value)
        imageView.image = images[index]
    }
}

