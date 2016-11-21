//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by Joao Paulo Lethier on 19/11/16.
//  Copyright © 2016 Joao Paulo Lethier. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
    var product: Product?

    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productNameLabel.text = product?.name
        if let image = product?.productImage {
          productImageView.image = UIImage(named: image)
        }
    }
    @IBAction func addToCartPressed(_ sender: Any) {
        print("Button tapped")
        
        guard let product = product, let price = product.price else {
            print("Prouct without a price")
            return
        }
        
        let alertController = UIAlertController(title: "Saved to the cart", message: "Saved to cart with price of \(price)", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
}
