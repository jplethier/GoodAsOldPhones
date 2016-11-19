//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by Joao Paulo Lethier on 19/11/16.
//  Copyright © 2016 Joao Paulo Lethier. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var productNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        productNameLabel.text = "1937 Desk Phone"
    }
}
