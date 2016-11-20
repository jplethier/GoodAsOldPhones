//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by Joao Paulo Lethier on 19/11/16.
//  Copyright © 2016 Joao Paulo Lethier. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
    var productName: String?

    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productNameLabel.text = productName
        productImageView.image = #imageLiteral(resourceName: "phone-fullscreen3")
    }
    @IBAction func addToCartPressed(_ sender: Any) {
        print("Button tapped")
    }
}
