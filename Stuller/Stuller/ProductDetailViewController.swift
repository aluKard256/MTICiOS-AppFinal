//
//  ProductDetailViewController.swift
//  Stuller
//
//  Created by Raul Ernesto Escobedo Herrera on 7/4/15.
//  Copyright (c) 2015 Raul Ernesto Escobedo Herrera. All rights reserved.
//

import UIKit

class ProductDetailViewController: UIViewController
{
    // Model
    var product: Product?

    @IBOutlet weak var productImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productImageView.image = product?.image
    }

}
